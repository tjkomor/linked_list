gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'


class LinkedListTest < Minitest::Test

  def test_head_data_is_head_next_node_data
    list = LinkedList.new
    list.append("tyler")
    assert_equal "tyler", list.head_data
  end

  def test_it_can_accept_multiple_nodes
    list = LinkedList.new
    list.append('tyler')
    list.append('jeff')
    list.append('rob')
    assert_equal 'tyler', list.head_data
    assert_equal 'rob', list.tail_data
  end

  def test_it_can_append_node_when_empty
    list = LinkedList.new
    list.append('tyler')
    assert_equal 'tyler', list.tail_data
  end

  def test_to_append_node_to_existing_list
    list = LinkedList.new
    list.append('tyler')
    list.append('jeff')
    assert_equal 'jeff', list.tail_data
  end


  def test_it_can_prepend_node
    list = LinkedList.new
    list.append("tyler")
    list.append("jeff")
    list.append("marlo")
    list.prepend("john")
    assert_equal "john", list.head_data
    assert_equal "marlo", list.tail_data
  end

  def test_it_can_find_the_tail_data
    list = LinkedList.new
    list.append('pete')
    list.append("tyler")
    list.append("austin")
    list.append("nuk")
    assert_equal "nuk", list.tail_data
  end

  def test_it_can_find_list_size
    list = LinkedList.new
    list.append("tyler")
    list.append("john")
    assert_equal 2, list.list_size
  end

  def test_it_can_find_data_in_a_list
    list = LinkedList.new
    list.append('tyler')
    list.append("john")
    list.append('charles')
    assert_equal true, list.include?('tyle')
  end



end
