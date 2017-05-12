Encoding.default_external = Encoding::UTF_8
require 'csv'
require 'fileutils'

dirlist = CSV.readlines("dirlist.csv").flatten #ネストした状態で格納されてる、でも普通の区切りで問題ないのでflatten

dirlist.each do |i|
  FileUtils.mkdir_p("#{i}") #ダブルコーテションじゃないとiが反応しないので注意
end
