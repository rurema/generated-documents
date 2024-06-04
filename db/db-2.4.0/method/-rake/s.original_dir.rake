names=original_dir
visibility=public
kind=defined

--- original_dir -> String

Rake アプリケーションを開始したディレクトリを返します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  Rake.original_dir # => "/path/to/dir"
end
//}

