require 'ostruct'
require 'httparty'
require 'active_support/core_ext/string/inflections'

# A small hack written by David Roy to make OpenStruct not care about calling
# a object via snake_case when it is camelCase
class CamelAndSankeStruct < OpenStruct
  def method_missing(method, *args, &blk)
    (/(?<name>.+?)(?<setter>=)?$/ =~ method.to_s)
    property = name.camelcase(:lower).to_sym
    if @table.has_key?(property)
      setter ? @table[property] = args.first : @table[property]
    else
      super
    end
  end
end

class EasyStruct < HTTParty::Parser
  def parse
    JSON.parse(body, object_class: CamelAndSankeStruct)
  end
end
