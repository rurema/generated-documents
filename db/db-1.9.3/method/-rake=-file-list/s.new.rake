names=new
visibility=public
kind=defined
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.ZtgaSH/src/refm/api/src/rake/Rake__FileList

--- new(*patterns){|self| ... }

与えられたパターンをもとにして自身を初期化します。

ブロックが与えられている場合は、自身をブロックパラメータとしてブロックを評価します。

@param patterns パターンを指定します。

例:
   file_list = FileList.new('lib/**/*.rb', 'test/test*.rb')

   pkg_files = FileList.new('lib/**/*') do |fl|
     fl.exclude(/\bCVS\b/)
   end


