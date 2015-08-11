require 'chunky_png'
require 'fileutils'

#COLOR_TRUE = ChunkyPNG::Color::rgba(224, 255, 255, 96) # for kunijiban
COLOR_TRUE = ChunkyPNG::Color::rgba(255, 255, 255, 0) # for ort
COLOR_FALSE = ChunkyPNG::Color::rgba(0, 0, 0, 128)
def _new_image
  return ChunkyPNG::Image.new(256, 256, COLOR_FALSE)
end

def write(image, zxy)
  path = "#{zxy.join('/')}.png"
  FileUtils.mkdir_p(File.dirname(path)) unless File.directory?(File.dirname(path))
  image.save(path)
  print "wrote #{path}\n"
  return _new_image
end

_new_image.save('404.png')
current = [nil, nil, nil]
last = [nil, nil, nil]
(z, x, y, u, v) = [nil, nil, nil, nil, nil]
image = _new_image
while gets
  (z, x, y, u, v) = $_.strip.split(',').map{|v| v.to_i}
  current = [z, x, y]
  if current == last or last[0].nil?
    image[u, v] = COLOR_TRUE
  else
    image = write(image, last)
    image[u, v] = COLOR_TRUE
  end
  last = current
end
write(image, last)
