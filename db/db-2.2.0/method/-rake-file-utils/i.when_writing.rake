names=when_writing
visibility=public
kind=defined
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.wG7wMH/src/refm/api/src/rake/RakeFileUtils

--- when_writing(msg = nil){ ... }

[[m:RakeFileUtils.nowrite_flag]] が真である場合与えられたブロックを実行せずに、
与えられたメッセージを表示します。

そうでない場合は、与えられたブロックを実行します。

@param msg 表示するメッセージを指定します。

例:
  when_writing("Building Project") do
    project.build
  end

