names=member?
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__InvocationChain:32

--- member?(task_name) -> bool

与えられたタスク名が自身に含まれる場合は真を返します。
そうでない場合は偽を返します。

@param task_name タスク名を指定します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  invocation_chain = Rake::InvocationChain.new("task_a", Rake::InvocationChain::EMPTY)
  invocation_chain.member?("task_a") # => true
  invocation_chain.member?("task_b") # => false
end
//}

