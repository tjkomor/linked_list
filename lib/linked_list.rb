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
      head.next_node == nil
      tail = next_node
  end

end
