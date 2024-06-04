names=resolve
visibility=public 
kind=defined

--- resolve -> self

追加リストと除外リストを評価します。

//emlist[][ruby]{
# Rakefile での記載例とする

IO.write("test.rb", "test")
IO.write("test.java", "test")
IO.write("test.js", "test")

task default: :test_rake_app
task :test_rake_app do
  file_list  = FileList.new("*.rb")
  file_list.include("*.java")
  file_list.exclude("*.js")
  file_list.resolve # => ["test.rb", "test.java"]
end
//}

