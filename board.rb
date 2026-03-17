class Chessboard
  attr_accessor :queue
  def initialize
    @queue = []
  end


  def knight_moves(start_location, target)
    return start_location if start_location == target
    result, visited = [], []
    @queue << [start_location]
    path_found = false
    until path_found
      sequence = []
      sequence = @queue.shift
      current_knights_location = sequence.last 
      visited << current_knights_location
      next_locations = get_allowed_squares(current_knights_location)
      if next_locations.include?(target)
        result = sequence
        result << target 
        path_found = true
      else
        next_locations.each do |location|
          next_check = sequence.dup 
          next_check << location if !visited.include?(location)
          @queue << next_check
        end
      end
    end
    result
  end

  def get_allowed_squares(location)
    x, y = location[0], location[1]
    array_of_squares = []
    [2, -2].each do |i|
      [1, -1].each do |j|
        a, b = x + i, y + j
        array_of_squares << [a, b] if a >= 0 && b >= 0 && a <= 7 && b <= 7
        b, a = y + i, x + j
        array_of_squares << [a, b] if a >= 0 && b >= 0 && a <= 7 && b <= 7
      end
    end
    array_of_squares
  end
end

