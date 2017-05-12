Encoding.default_external = Encoding::UTF_8
require 'csv'
require 'fileutils'

dirlist = CSV.readlines("dirlist.csv").flatten #ネストした状態で格納されてる、でも普通の区切りで問題ないのでflatten

dirlist.each do |i|
  FileUtils.mkdir_p("#{i}") #ダブルコーテションじゃないとiが反応しないので注意
end

#挙動確認用
#Dir.mkdir("test1") #これは普通に使える、ただし同名フォルダが存在する場合はエラーを吐く
#Dir.mkdir('./test1/test2')
#纏めて作るわけじゃないので注意、./でカレントディレクトリを指定、その後test1→test2なる、test1が無いと作る時にエラーが出る
#FileUtils.mkdir_p('./test1/test2/test3')
#最初から深い階層まで作る用
#require 'fileutils'を宣言してからじゃないと使えないので注意

#完成、めっちゃ楽チン
#ほとんどfile_makerと代わらんから楽だったわ