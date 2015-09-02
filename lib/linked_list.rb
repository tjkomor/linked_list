require './lib/node'

class LinkedList

  attr_accessor :head

  def initialize
    @head = Node.new
  end

  def head_data
    @head.next_node.data
  end

  def prepend(data)
    node = Node.new(data)
    first_node = @head.next_node
    @head.next_node = node
    node.next_node = first_node
  end

  def find_tail
    current = @head
    until current.next_node.nil?
      current = current.next_node
    end
    current
  end

  def tail_data
    find_tail.data
  end

  def append(data)
    new_node = Node.new(data)
    find_tail.next_node = new_node
  end

  def list_size
    current = @head
    counter = 0
    until current.next_node.nil?
      current = current.next_node
      counter += 1
    end
    counter
  end

  def include?(key)
    current = @head
    until (current.data == key) || (current.next_node.nil?)
      current = current.next_node
    end
    current.data == key
  end

  def second_to_last
    current = @head
    until current.next_node.next_node.nil?
      current = current.next_node
    end
    current
  end

  def pop
    if list_size == 0
      "the list is empty"
    else
      previous = second_to_last.next_node
      second_to_last.next_node = nil
      previous.data
    end
  end

  def insert(data, position)
    counter = 0
    current = @head
    if current.next_node.nil? || counter < position
      append(data)
    else
      until counter == position
        previous = current
        current = current.next_node
        counter += 1
      end
      new_node = Node.new(data)
      previous.next_node = new_node
      new_node.next_node = current
    end
  end

  def find_object_by_index(index)
    counter = 0
    current = @head
    until counter == index
      current = current.next_node
      counter += 1
    end
    current
  end

  def find_data_by_index(index)
    find_object_by_index(index).data
  end

  def find_by_value(value)
    counter = 0
    current = @head
    until current.data == value
      current = current.next_node
      counter += 1
    end
    counter
  end

  def remove_by_index(index)
    find_object_by_index(index)
  end





end
