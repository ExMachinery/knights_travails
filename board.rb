require_relative 'square'
class Chessboard
  attr_accessor :board
  def initialize
    puts "hey!"
  end


  def knight_moves(location, target)

    # Take target as a direction rule for x and y
    # for this position
    
  end

  def get_allowed_squares(location)
    x, y = location[0], location[1]
    array_of_squares = []
    [2, -2].each do |i|
      [1, -1].each do |j|
        a, b = x + i, y + j
        array_of_squares << [a, b] if a >= 0 && b >= 0 && a <= 7 && b <= 7
        a, b = y + i, x + j
        array_of_squares << [a, b] if a >= 0 && b >= 0 && a <= 7 && b <= 7
      end
    end
    array_of_squares
    
  end

end

# x - 2; y - 1
# x - 2; y + 1
# x + 2; y + 1
# x + 2; y - 1
# x - 1; y - 2
# x - 1; y + 2
# x + 1; y + 2
# x + 1; y - 2







# Example of the BFS from previous task
  # def level_order
  #   return to_enum(:level_order) unless block_given?

  #   result = []
  #   @queue << @root
  #   until @queue.empty?
  #     result << queue_handler
  #   end

  #   result.each do |val|
  #     yield(val)
  #   end
  #   self
  # end

  # def queue_handler
  #   node = @queue.shift
  #   result = node.value
  #   @queue.push(node.left) if node.left
  #   @queue.push(node.right) if node.right
  #   result
  # end