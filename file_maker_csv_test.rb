Encoding.default_external = Encoding::UTF_8
require 'csv'
require 'fileutils'
=begin
File.open("sample.txt","w") do |file|
  file.puts("hoge")
  file.puts("fuga")
end
=end
#a = CSV.readlines("list.csv")
#p a
#=>[["00-01"], ["00-02"], ["00-03"]]　ネストした配列になってるので、この状態だとエラーが出る。
#読み込んだ際に単体の配列にする必要あり
#a = ["00-01","00-02","00-03"]
ary=[]
CSV.foreach('list.csv') do |row|
ary << row
end
p ary.flatten
#=>["00-01", "00-02", "00-03"]
#理想形来たー
=begin
a.each do |i|
  puts i
  FileUtils.touch("main#{i}.java")
end
=end
=begin
i = 0
while i <= 5
FileUtils.touch("main#{i}.java")
  i += 1
end
=end
