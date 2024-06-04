names=needed?
visibility=public 
kind=defined

--- needed? -> bool

このタスクが必要である場合は真を返します。
そうでない場合は偽を返します。

このタスクで作成しようとしているファイルが存在しない場合や、
このタスクで作成しようとしているファイルが古い場合に真を返します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: "test.txt"
file "test.txt" do |task|
  Rake.application.options.build_all = false
  task.needed? # => true
  IO.write("test.txt", "test")
  task.needed? # => false
end
//}

