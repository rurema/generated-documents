names=current_scope
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__TaskManager:57

--- current_scope -> Array

現在のスコープを返します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  Rake.application.current_scope # => LL()
end
//}

