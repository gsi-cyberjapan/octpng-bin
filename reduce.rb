require 'chunky_png'
require 'fileutils'

def write(image, z, x, y)
  path = "#{z}/#{x}/#{y}.png"
  FileUtils.mkdir_p(File.dirname(path)) unless File.directory?(File.dirname(path))
  image.save(path)
  return ChunkyPNG::Image.new(256, 256)
end

current = [nil, nil, nil]
last = [nil, nil, nil]
(z, x, y, u, v) = [nil, nil, nil, nil, nil]
image = ChunkyPNG::Image.new(256, 256)
while gets
  (z, x, y, u, v) = $_.strip.split(',').map{|v| v.to_i}
  current = [z, x, y]
  if current == last or last[0].nil?
    image[u, v] = ChunkyPNG::Color::rgb(255, 0, 0)
  else
    print "write #{z}/#{x}/#{y}.\n"
    image = write(image, z, x, y)
    image[u, v] = ChunkyPNG::Color::rgb(255, 0, 0)
  end
  last = current
end
write(image, z, x, y)
