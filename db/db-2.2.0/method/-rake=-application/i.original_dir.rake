names=original_dir
visibility=public
kind=defined
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.wG7wMH/src/refm/api/src/rake/Rake__Application

--- original_dir -> String

rake コマンドを実行したディレクトリを返します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  Rake.application.original_dir # => "/path/to/dir"
end
//}

