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
    until counter == position
      previous = current
      current = current.next_node
      counter += 1
    end
    new_node = Node.new(data)
    previous.next_node = new_node
    new_node.next_node = current
  end





  # def include?(key)
  #   current = @head
  #   while current.data != key && cure
  #     current = current.next_node
  #     counter += 1
  #     if current == nil
  #       false
  #     else
  #       answer = true
  #       require 'pry'; binding.pry
  #     end
  #   end
  #   answer
  # end



end

list = LinkedList.new
list.append('tyler')
list.append("john")
list.append('charles')
