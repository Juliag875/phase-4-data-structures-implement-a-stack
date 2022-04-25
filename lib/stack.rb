class Stack

  def initialize(limit = nil)
    @stack = []
    @limit = limit
  end

  def push(value)
    raise "Stack Overflow" if full?
    @stack.push(value)
  end

  def pop 
    @stack.pop
  end
  
  def peek
    @stack.last
  end

  def size
    @stack.length
  end

  def empty?
    @stack.empty?
  end

  def full?
    @limit && @stack.size == @limit
  end

  def search(target)
    @stack.each_with_index do |i, index|
      return size - index - 1 if i == target
    end
    -1
  end


end
