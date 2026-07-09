names=rake_extension
visibility=public
kind=added
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.ryNQ5k/src/refm/api/src/rake/core_ext

--- rake_extension(method){ ... } -> ()

与えられたブロック内で既に存在するメソッドを再定義しようとした場合に
警告を表示します。この場合、ブロックは評価されません。

@param method ブロック内で再定義する予定のメソッド名を指定します。

例:
   class String
     rake_extension("xyz") do
       def xyz
         ...
       end
     end
   end


