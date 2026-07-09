names=desc
visibility=private
kind=added
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.wG7wMH/src/refm/api/src/rake/core_ext

--- desc(description) -> String

直後の Rake タスクの説明を登録します。

@param description 直後のタスクの説明を指定します。

例:
   desc "Run the Unit Tests"
   task :test => [:build] do
     runtests
   end

