names=sub
visibility=public
kind=defined
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.wG7wMH/src/refm/api/src/rake/Rake__FileList

--- sub(pattern, replace) -> Rake::FileList

自身に含まれるファイルリストのそれぞれのエントリに対して [[m:String#sub]] を実行し、
結果を新しい [[c:Rake::FileList]] として返します。

例:
   FileList['a.c', 'b.c'].sub(/\.c$/, '.o')  => ['a.o', 'b.o']


