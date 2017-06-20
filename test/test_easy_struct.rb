require 'minitest/autorun'
require 'easy_struct'

class HolaTest < Minitest::Test
  def test_easy_aye_is_easyAye
    test_data = JSON.parse('{"easyAye":"aye"}', object_class: CamelAndSankeStruct)
    assert_equal 'aye', test_data.easy_aye
    assert_equal 'aye', test_data.easyAye
  end
end
