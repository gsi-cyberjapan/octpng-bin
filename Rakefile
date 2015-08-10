task :default do
  #sh "wget --continue http://cyberjapandata.gsi.go.jp/xyz/kunijiban/mokuroku.csv.gz"
  sh "gzcat mokuroku.csv.gz | ruby map.rb 15 | sort | ruby reduce.rb"
end
