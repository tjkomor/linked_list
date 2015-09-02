require './lib/node'  # ~> LoadError: cannot load such file -- ./lib/node

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
    until current.data == key
      current = current.next_node
      counter += 1
      if current == nil
        false
      else
        answer = true
        require 'pry'; binding.pry
      end
    end
    answer
  end



end

# ~> LoadError
# ~> cannot load such file -- ./lib/node
# ~>
# ~> /Users/tylerkomoroske/.rubies/ruby-2.2.2/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
# ~> /Users/tylerkomoroske/.rubies/ruby-2.2.2/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
# ~> /Users/tylerkomoroske/code/projects/linked_lists/lib/linked_list.rb:1:in `<main>'
