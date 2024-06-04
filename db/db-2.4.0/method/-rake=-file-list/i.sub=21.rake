names=sub!
visibility=public 
kind=defined

--- sub!(pattern, replace) -> self

自身に含まれるファイルリストのそれぞれのエントリに対して [[m:String#sub]] を実行します。
自身を破壊的に変更します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList['a.c', 'b.c']
  file_list.sub!(/\.c$/, '.o') # => ['a.o', 'b.o']
  file_list                    # => ['a.o', 'b.o']
end
//}

