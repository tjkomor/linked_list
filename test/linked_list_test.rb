gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'


class LinkedListTest < Minitest::Test

  def test_head_data_is_head_next_node_data
    list = LinkedList.new
    list.append('tyler')
    assert_equal 'tyler', list.head_data
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
    assert_equal 'tyler', list.head_data
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
    list.append('tyler')
    list.append("jeff")
    list.append('tyler')
    list.prepend('john')
    assert_equal 'john', list.head_data
    assert_equal 'tyler', list.tail_data
  end

  def test_it_can_prepend_to_empty_list
    list = LinkedList.new
    list.prepend('tyler')
    assert_equal 'tyler', list.head_data
    assert_equal 'tyler', list.tail_data
  end

  def test_it_can_find_the_tail_data
    list = LinkedList.new
    list.append('pete')
    list.append('tyler')
    list.append('austin')
    list.append('nuk')
    assert_equal 'nuk', list.tail_data
  end

  def test_it_can_find_list_size
    list = LinkedList.new
    list.append('tyler')
    list.append('john')
    list.prepend('phil')
    assert_equal 'john', list.pop
    assert_equal 2, list.list_size
  end

  def test_it_can_find_data_in_a_list
    list = LinkedList.new
    list.append('tyler')
    list.append('john')
    list.append('charles')
    assert_equal 'charles', list.pop
    assert_equal 'tyler', list.head_data
    assert_equal 'john', list.tail_data
    assert_equal 2, list.list_size
    assert_equal true, list.include?('tyler')
    assert_equal false, list.include?('peter')
    assert_equal false, list.include?('charles')
  end

  def test_second_to_last_can_reset_tail
    list = LinkedList.new
    list.append('phil')
    list.append('tyler')
    list.append('john')
    assert_equal 3, list.list_size
    assert_equal 'tyler', list.second_to_last.data
  end

  def test_it_can_remove_node
    list = LinkedList.new
    list.append('phil')
    list.append('pete')
    list.append('john')
    assert_equal 'john', list.pop
    assert_equal 'pete', list.tail_data
    assert_equal 2, list.list_size
    assert_equal true, list.include?('phil')
    assert_equal false, list.include?('john')
  end

  def test_cannot_pop_empty_list
    list = LinkedList.new
    assert_equal "the list is empty", list.pop
  end

  def test_it_can_insert_node_anywhere_in_list
    list = LinkedList.new
    list.append('phil')
    list.append('jeff')
    list.append('john')
    list.insert('tyler', 2)
    assert_equal 4, list.list_size
    assert_equal 'tyler', list.head.next_node.next_node.data
    assert_equal 'john', list.tail_data
    assert_equal 'phil', list.head_data
    assert_equal true, list.include?('tyler')
  end

  def test_it_can_insert_node_into_empty_list
    list = LinkedList.new
    list.insert('tyler', 4)
    assert_equal 'tyler', list.head_data
  end

  def test_it_will_append_to_end_of_list_if_position_doesnt_exist
    list = LinkedList.new
    list.append('tyler')
    list.insert('pete', 3)
    assert_equal 'pete', list.tail_data
  end

  def test_it_can_find_by_index
    list = LinkedList.new
    list.append('john')
    list.append('tyler')
    list.append('joe')
    list.prepend('phil')
    assert_equal 'tyler', list.find_data_by_index(3)
    assert_equal 'phil', list.find_data_by_index(1)
  end

  def test_it_can_find_node_by_value
    list = LinkedList.new
    list.append('john')
    list.append('tyler')
    list.append('joe')
    list.append('roger')
    assert_equal 4, list.find_by_value('roger')
    assert_equal 2, list.find_by_value('tyler')
  end

  def test_it_returns_list_size_if_value_doesnt_exist
    list = LinkedList.new
    list.append('john')
    list.append('tyler')
    list.append('joe')
    list.append('roger')
    assert_equal 4, list.find_by_value("lou")
  end

  def test_it_can_remove_node_by_index
    list = LinkedList.new
    list.append('john')
    list.append('tyler')
    list.append('joe')
    list.append('roger')
    assert_equal 'john', list.head_data
    assert_equal 'joe', list.remove_by_index(2)
    assert_equal 3, list.list_size
  end

  def test_it_can_remove_by_value
    list = LinkedList.new
    list.append('john')
    list.append('tyler')
    list.append('tyler')
    list.append('joe')
    list.append('roger')
    list.prepend('will')
    assert_equal 'tyler', list.remove_by_value('tyler')
    assert_equal 'joe', list.find_data_by_index(4)
    assert_equal 5, list.list_size
  end

  def test_it_can_find_the_distance_between_two_nodes
    list = LinkedList.new
    list.append('john')
    list.append('pete')
    list.append('tyler')
    list.append('joe')
    list.prepend("travis")
    assert_equal 3, list.distance('john', 'joe')
    assert_equal 1, list.distance('tyler', 'joe')
    assert_equal 4, list.distance('travis', 'joe')
  end

end
