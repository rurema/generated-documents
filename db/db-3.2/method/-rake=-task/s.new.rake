names=new
visibility=public
kind=defined
source_location=manual/api/rake/Rake__Task.md

### def new(task_name, app)

与えられたタスク名とアプリケーションで自身を初期化します。

このメソッドで作成したタスクは、アクションや事前タスクを持っていません。
それらを追加する場合は [m:Rake::Task#enhance] を使用してください。

- **SEE** [m:Rake::Task#enhance]

