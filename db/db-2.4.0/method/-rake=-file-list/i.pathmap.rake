names=pathmap
visibility=public 
kind=defined

--- pathmap(spec = nil) -> Rake::FileList

各要素に [[m:String#pathmap]] を適用した新しい [[c:Rake::FileList]] を返します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList.new("test1.rb", "test2.rb", "test3.rb")
  file_list.pathmap("%n") # => ["test1", "test2", "test3"]
end
//}

@see [[m:String#pathmap]]

