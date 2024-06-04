names=name
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__Application:135

--- name -> String

アプリケーションの名前を返します。通常は 'rake' という名前を返します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  Rake.application.name # => "rake"
end
//}

