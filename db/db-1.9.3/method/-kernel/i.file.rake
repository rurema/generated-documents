names=file
visibility=private
kind=added
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.ZtgaSH/src/refm/api/src/rake/core_ext

--- file(*args){ ... } -> Rake::FileTask

ファイルタスクを定義します。

@param args ファイル名と依存ファイル名を指定します。

例:
   file "config.cfg" => ["config.template"] do
     open("config.cfg", "w") do |outfile|
       open("config.template") do |infile|
         while line = infile.gets
           outfile.puts line
         end
       end
     end
   end

@see [[m:Rake::Task.define_task]]

