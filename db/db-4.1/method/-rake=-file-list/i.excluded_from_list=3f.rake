names=excluded_from_list?
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__FileList:315

--- excluded_from_list?(file_name) -> bool

与えられたファイル名が除外される場合は、真を返します。
そうでない場合は偽を返します。

@param file_name ファイル名を指定します。

//emlist[][ruby]{
# Rakefile での記載例とする

IO.write("test1.rb", "test")
IO.write("test2.rb", "test")

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList.new("test1.rb", "test2.rb")
  file_list.exclude("test1.rb")
  file_list.excluded_from_list?("test1.rb") # => true
  file_list.excluded_from_list?("test2.rb") # => false
end
//}

