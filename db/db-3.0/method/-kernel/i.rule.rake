names=rule
visibility=private
kind=added
source_location=refm/api/src/rake/core_ext:196

--- rule(*args){|t| ... } -> Rake::Task

自動的に作成するタスクのためのルールを定義します。

@param args ルールに与えるパラメータを指定します。

例:
  rule '.o' => '.c' do |t|
    sh %{cc -o #{t.name} #{t.source}}
  end

