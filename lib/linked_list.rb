require_relative 'node'
class LinkedList

  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(node)
    if head == nil
      head = node
    elsif
      tail.next_node == nil
      tail = next_node
    else
      tail = node
    end
  end

end
