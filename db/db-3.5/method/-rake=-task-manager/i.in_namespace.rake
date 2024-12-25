names=in_namespace
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__TaskManager:98

--- in_namespace(name){|name_space| ... } -> Array

与えられた名前の名前空間でブロックを評価します。

@param name 名前を指定します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app

namespace :sample do
  def hoge
    puts "hoge"
  end
end

task :test_rake_app do
  task.application.in_namespace("sample") do
    hoge # => "hoge"
  end
end
//}

