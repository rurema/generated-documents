names===
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__FileList:66

--- ==(array) -> bool

自身を配列に変換してから与えられた配列と比較します。

@param array 比較対象の配列を指定します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList.new('lib/**/*.rb', 'test/test*.rb')
  file_list == file_list.to_a # => true
end
//}

