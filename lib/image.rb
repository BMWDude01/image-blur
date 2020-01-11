class Image
  attr_accessor :data
  def initialize(data) 
    @data = data
end
    def blur
    ones = @data
    ones.each_with_index do |row, row_index|
        row.each_with_index do |item, col_index|
           if item == 1
               ones[row_index - 1][col_index] = 2 unless ones[row_index - 1][col_index] == nil || row_index == 0
               ones[row_index + 1][col_index] = 2 unless ones[row_index + 1][col_index] == nil
               ones[row_index] [col_index - 1] =2 unless ones[row_index] [col_index - 1] == nil || col_index == 0 
               ones[row_index] [col_index + 1] = 2 unless ones[row_index] [col_index + 1] == nil 
           end
       end
   end
   return ones.map{|row| row.map{|number| number == 2 ? number = 1 : number}}
    end
end

image1 = Image.new([
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [1, 0, 0, 0],
    [0, 0, 0, 0]
])

image1.blur






#