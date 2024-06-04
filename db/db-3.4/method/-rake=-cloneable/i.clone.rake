names=clone
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__Cloneable:8

--- clone -> object

自身を複製します。

自身がフリーズされていれば返されるオブジェクトもフリーズされています。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList['a.c', 'b.c']
  clone = file_list.clone
  clone                 # => ["a.c", "b.c"]
  clone.exclude("a.c")
  clone == file_list    # => false
end
//}

