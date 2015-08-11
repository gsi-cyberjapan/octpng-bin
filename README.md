# octpng-bin
[WIP] Reference implementation of octpng-spec, creating zero-or-one octpng data

# Usage
The following example creates octpng tile at z=7 from z=15 of mokuroku data.
```
$ wget http://cyberjapandata.gsi.go.jp/xyz/kunijiban/mokuroku.csv.gz
$ gzcat mokuroku.csv.gz | ruby map.rb | sort | ruby reduce.rb
```

# Example
- [kunijiban](http://gsi-cyberjapan.github.io/octpng-bin/kunijiban.html)
- [ort](http://gsi-cyberjapan.github.io/octpng-bin/ort.html)

# See also
- http://github.com/hfu/octpng-spec
