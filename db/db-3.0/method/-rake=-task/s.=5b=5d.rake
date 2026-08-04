names=[]
visibility=public
kind=defined
source_location=manual/api/rake/Rake__Task.md
since_by_name==5b=5d=1.9.3
until_by_name=

### def Rake::Task.[](task_name) -> Rake::Task

与えられた名前のタスクを返します。

与えられた名前のタスクが存在しない場合は、ルールからタスク名を合成しようとします。
ルールからタスク名を合成出来なかったが、与えられたタスク名にマッチするファイルが存在する場合は、ファイルタスクがアクションや事前タスク無しで存在していると仮定します。

- **param** `task_name` -- タスクの名前を指定します。

