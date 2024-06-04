names=is_a?,kind_of?
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__FileList:97

--- is_a?(klass) -> bool
--- kind_of?(klass) -> bool

自身に [[c:Array]] のフリをさせます。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList.new("test1.rb", "test2.rb", "test3.rb")
  file_list.is_a?(Array)  # => true
  file_list.is_a?(String) # => false
end
//}

