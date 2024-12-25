names=tasks
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__NameSpace:27

--- tasks -> Array

タスクのリストを返します。

//emlist[][ruby]{
# Rakefile での記載例とする

namespace :ns do |ns|
  task :ts1 do
  end
  task :ts2 do
  end

  ns.tasks # => [<Rake::Task ns:ts1 => []>, <Rake::Task ns:ts2 => []>]
end
//}

