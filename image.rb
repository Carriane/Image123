class Image
  def initialize(row)
    @row = row
  end

  def output_image
    @row.each do |cell|
    puts cell.join
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
