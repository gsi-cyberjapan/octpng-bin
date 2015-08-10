DELTA = 8
W = 2 ** DELTA

def map(z_to_see)
  raise "z must be equal to or greater than #{DELTA}." if z_to_see < 8
  while $stdin.gets
    r = $_.strip.split(',')
    (z, x, y) = r[0].split('/').map{|v| v.to_i}
    next if z != z_to_see
    print [z - DELTA, x >> DELTA, y >> DELTA, x % W, y % W].join(','), "\n"
  end
end
map(ARGV[0].to_i) if ARGV[0]
