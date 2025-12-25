names=[]
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__TaskArguments:8

--- [](key) -> object

与えられたパラメータ名に対応する値を返します。

@param key パラメータの名前を指定します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  arguments = Rake::TaskArguments.new(["name1", "name2"], ["value1", "value2"])
  arguments["name1"] # => "value1"
  arguments["name2"] # => "value2"
end
//}

