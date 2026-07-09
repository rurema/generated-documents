names=name
visibility=public
kind=defined
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.xqkPhh/src/refm/api/src/rake/Rake__Application

--- name -> String

アプリケーションの名前を返します。通常は 'rake' という名前を返します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  Rake.application.name # => "rake"
end
//}

