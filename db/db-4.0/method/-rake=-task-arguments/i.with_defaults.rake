names=with_defaults
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__TaskArguments:88

--- with_defaults(defaults) -> Hash

パラメータにデフォルト値をセットします。

@param defaults デフォルト値として使用するキーと値を格納したハッシュを指定します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  arguments = Rake::TaskArguments.new(["name1", "name2"], ["value1", "value2"])
  arguments.to_hash                                        # => {:name1=>"value1", :name2=>"value2"}
  arguments.with_defaults({ default_key: "default_value"}) # => {:default_key=>"default_value", :name1=>"value1", :name2=>"value2"}
  arguments.to_hash                                        # => {:default_key=>"default_value", :name1=>"value1", :name2=>"value2"}
end
//}

