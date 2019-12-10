class Image
  def initialize(pic)
    @pic = pic
  end

  def new_array
    array = []
    @pic.each_with_index do |row, num|
      row.each_with_index do |column, num2|
        if column == 1
          array.push [num, num2]
        end
      end
    end
    array
  end

  def blur
    array = new_array
    @pic.each_with_index do |row, num|
     row.each_with_index do |column, num2|
       array.each do |new_row, new_num|

          if row == new_row && num2 == new_num
            @pic[num -1][num2] = 1 unless num == 0
            @pic[num +1][num2] = 1 unless num >= 3
            @pic[num][num2 -1] = 1 unless num2 == 0
            @pic[num][num2 +1] = 1 unless num2 >= 3
          end
       end
     end
    end
  end

  def output_image
    @pic.each do |x|
    puts x.join
    end
  end
end
image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image

image.blur
image.output_image
