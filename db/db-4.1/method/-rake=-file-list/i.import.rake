names=import
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__FileList:337

--- import(array) -> self

与えられた配列を自身にインポートします。

@param array ファイル名のリストを指定します。

//emlist[][ruby]{
# Rakefile での記載例とする

IO.write("test1.rb", "test")
IO.write("test2.rb", "test")

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList.new("test1.rb", "test2.rb", "test3.rb")
  file_list.import(["test4.rb", "test5.rb"]) # => ["test4.rb", "test5.rb", "test1.rb", "test2.rb", "test3.rb"]
  file_list                                  # => ["test4.rb", "test5.rb", "test1.rb", "test2.rb", "test3.rb"]
end
//}

