names=to_s
visibility=public 
kind=defined

--- to_s -> String

トップレベルのタスクから自身までの依存関係を文字列として返します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  invocation_chain= Rake::InvocationChain.new("task_a", Rake::InvocationChain::EMPTY)
  invocation_chain.to_s # => "TOP => task_a"
end
//}

