names=[]
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__Task:147

--- [](task_name) -> Rake::Task

与えられた名前のタスクを返します。

与えられた名前のタスクが存在しない場合は、ルールからタスク名を合成しようとします。
ルールからタスク名を合成出来なかったが、与えられたタスク名にマッチするファイルが存在する
場合は、ファイルタスクがアクションや事前タスク無しで存在していると仮定します。

@param task_name タスクの名前を指定します。

