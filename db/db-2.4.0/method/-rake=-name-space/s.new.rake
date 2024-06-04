names=new
visibility=public
kind=defined

--- new(task_manager, scope_list)

自身を初期化します。

@param task_manager [[c:Rake::Application]] のインスタンスを指定します。

@param scope_list 名前空間のリストを指定します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  name_space = Rake::NameSpace.new(Rake.application, Rake::Scope.new("sample"))
  name_space.scope # => LL("sample")
end
//}
