names=rule
visibility=private
kind=added
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.ryNQ5k/src/refm/api/src/rake/core_ext

--- rule(*args){|t| ... } -> Rake::Task

自動的に作成するタスクのためのルールを定義します。

@param args ルールに与えるパラメータを指定します。

例:
  rule '.o' => '.c' do |t|
    sh %{cc -o #{t.name} #{t.source}}
  end

