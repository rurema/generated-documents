names=ext
visibility=public 
kind=defined

--- ext(newext = '') -> Rake::FileList

各要素に [[m:String#ext]] を適用した新しい [[c:Rake::FileList]] を返します。

//emlist[][ruby]{
# Rakefile での記載例とする

IO.write("test1.rb", "test")
IO.write("test2.rb", "test")

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList.new("test1.rb", "test2.rb", "test3.rb")
  file_list.ext(".erb") # => ["test1.erb", "test2.erb", "test3.erb"]
end
//}

@see [[m:String#ext]]

