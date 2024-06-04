names=to_hash
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__TaskArguments:74

--- to_hash -> Hash

パラメータ名と対応する値を格納したハッシュを返します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  arguments = Rake::TaskArguments.new(["name1", "name2"], ["value1", "value2"])
  arguments.to_hash # => {:name1=>"value1", :name2=>"value2"}
end
//}

