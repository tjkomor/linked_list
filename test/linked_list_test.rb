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
    assert_equal true, list.include?('tyler')
    assert_equal false, list.include?("peter")
    assert_equal true, list.include?('charles')
  end

  def test_second_to_last_can_reset_tail
    list = LinkedList.new
    list.append("blithe")
    list.append("tyler")
    list.append("john")
    assert_equal 3, list.list_size
    assert_equal "tyler", list.second_to_last.data
  end

  def test_it_can_remove_node
    list = LinkedList.new
    list.append("blithe")
    list.append("pete")
    list.append("john")
    assert_equal "john", list.pop
    assert_equal "pete", list.tail_data
    assert_equal 2, list.list_size
    assert_equal true, list.include?("blithe")
    assert_equal false, list.include?("john")
  end

  def test_cannot_pop_empty_list
    list = LinkedList.new
    assert_equal "the list is empty", list.pop
  end

  def test_it_can_insert_node_anywhere_in_list
    list = LinkedList.new
    list.append("blithe")
    list.append("pete")
    list.append("john")
    list.insert("jeff", 2)
    assert_equal 4, list.list_size
    assert_equal "blithe", list.head_data
    assert_equal true, list.includes?("jeff")
  end



end
