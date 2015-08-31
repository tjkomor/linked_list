gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'


class LinkedListTest < Minitest::Test

  def test_head_is_nil
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_tail_is_nil
    list = LinkedList.new
    assert_equal nil, list.tail
  end

  def test_it_can_append_first_node_as_head
    list = LinkedList.new
    assert_equal "tyler", list.append("tyler")
    assert_equal "john", list.append("john")
  end

  def test_it_can_append_node_when_head_already_exists
    list = LinkedList.new
    node_1 = Node.new("tyler")
    node_2 = Node.new("john")
    list.append(node_1)
    list.append(node_2)
  end
end
