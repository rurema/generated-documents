names=[]
visibility=public
kind=defined
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.Phg2K5/src/refm/api/src/rake/Rake__NameSpace

--- [](name) -> Rake::Task

与えられた名前のタスクを返します。

@param name タスクの名前を指定します。

//emlist[][ruby]{
# Rakefile での記載例とする

namespace :ns do |ns|
  task :ts1 do
  end
  task :ts2 do
  end

  ns[:ts1] # => <Rake::Task ns:ts1 => []>
  ns[:ts2] # => <Rake::Task ns:ts2 => []>
end
//}

