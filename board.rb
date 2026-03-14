require_relative 'square'
class Chessboard
  attr_accessor :board
  def initialize
  reference = [
    [0, 1, 2, 3, 4, 5, 6, 7],
    [0, 1, 2, 3, 4, 5, 6, 7],
    [0, 1, 2, 3, 4, 5, 6, 7],
    [0, 1, 2, 3, 4, 5, 6, 7],
    [0, 1, 2, 3, 4, 5, 6, 7],
    [0, 1, 2, 3, 4, 5, 6, 7],
    [0, 1, 2, 3, 4, 5, 6, 7],
    [0, 1, 2, 3, 4, 5, 6, 7]
  ]

  @board = []
  end
end








# Example of the BFS from previous task
  def level_order
    return to_enum(:level_order) unless block_given?

    result = []
    @queue << @root
    until @queue.empty?
      result << queue_handler
    end

    result.each do |val|
      yield(val)
    end
    self
  end

  def queue_handler
    node = @queue.shift
    result = node.value
    @queue.push(node.left) if node.left
    @queue.push(node.right) if node.right
    result
  end