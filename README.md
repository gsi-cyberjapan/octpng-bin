# octpng-bin
[WIP] Reference implementation of octpng-spec, creating zero-or-one octpng data

# Usage
The following example creates octpng tile at z=7 from z=15 of mokuroku data.
```
$ wget http://cyberjapandata.gsi.go.jp/xyz/kunijiban/mokuroku.csv.gz
$ gzcat mokuroku.csv.gz | ruby map.rb 15 | sort | ruby reduce.rb
```

# See also
- http://github.com/hfu/octpng-spec
