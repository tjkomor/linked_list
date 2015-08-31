gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'


class NodeTest < Minitest::Test

  def test_node_class_accepts_data
    node = Node.new("tyler")
    assert_equal "tyler", node.data
  end

  def test_node_class_accepts_two_arguments
    node = Node.new("tyler", "russell")
    assert_equal 'tyler', node.data
    assert_equal 'russell', node.next_node
  end

end
