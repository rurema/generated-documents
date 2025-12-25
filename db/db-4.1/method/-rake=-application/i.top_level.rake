names=top_level
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__Application:254

--- top_level

Rake アプリケーションに与えられたトップレベルのタスク
(コマンドラインで指定されたタスク) を実行します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test1
task :test1
task :test2 do
  puts "test2"
end

# rake test2 で実行
Rake.application.top_level

# => "test2"
//}

