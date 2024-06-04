names=rakefile
visibility=public 
kind=defined

--- rakefile -> String

実際に使用されている Rakefile の名前を返します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  Rake.application.rakefile # => "Rakefile"
end
//}



