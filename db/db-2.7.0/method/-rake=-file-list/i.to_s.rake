names=to_s
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__FileList:301

--- to_s -> String

全ての要素をスペースで連結した文字列を返します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList['a.c', 'b.c']
  file_list.to_s # => "a.c b.c"
end
//}

