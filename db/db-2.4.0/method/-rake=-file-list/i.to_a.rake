names=to_a,to_ary
visibility=public 
kind=defined

--- to_a -> Array
--- to_ary -> Array

内部的な配列を返します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList['a.c', 'b.c']
  file_list.to_a # => ["a.c", "b.c"]
end
//}

