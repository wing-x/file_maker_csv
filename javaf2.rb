Encoding.default_external = Encoding::UTF_8
require 'csv'
require 'fileutils'

a = CSV.readlines("java_list.csv")
af = a.flatten
af.each do |i|
  FileUtils.touch("#{i}.java")
  File.open "#{i}.java",'w' do |r|
    r.write "public class #{i}{}"
  end
end

=begin
よっしゃできたあああああああああああああ！
これでlistを書き換えれば好きなファイル名を大量生成できる、やったぜ
これでスッキリのファイル名をまとめた奴を作成しておいておこう。
そうすれば後は中身のコピペだけで済む
そしてプロコン用に中身を書くメソッドも追加できた！
やったぜ、初めて実用的なプログラムが書けた気がする
本当に嬉しい。やったね！

スッキリ分かるのサンプルコードに関しては
理想は作成→書き込みだろうけど、元のファイル名が全部一緒だからどうしようもない
やるとしたら一括でリネーム→参照して書き込みだけど
そうするとファイルパスの違う同名ファイルを探すというクソ面倒な事に
まあ暫定的な処理ならこれで良いだろう。
java用だからコメントアウトの奴変えておかないとな
コメントアウトじゃなくて、public class～にした。
こうすれば後はメソッド部分だけコピーすれば良い、やったぜ！
=end

=begin
File.open 'main00-01.java','w' do |r|
   r.write "\#main00-01"
end
=end
