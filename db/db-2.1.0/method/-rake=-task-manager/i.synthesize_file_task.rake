names=synthesize_file_task
visibility=public
kind=defined
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.Phg2K5/src/refm/api/src/rake/Rake__TaskManager

--- synthesize_file_task(task_name) -> Rake::FileTask | nil

与えられたタスク名をもとにファイルタスクを合成します。

@param task_name タスク名を指定します。

@return 与えられたタスク名と同名のファイルが存在する場合は、ファイルタスクを作成して返します。
        そうでない場合は nil を返します。

@raise RuntimeError タスクを合成できなかった場合に発生します。

