# class Rake::Task < Object

タスクは Rakefile における基本単位です。

タスクは一つ以上の関連するアクションと事前タスクを持ちます。
タスクを実行すると、まず始めに全ての事前タスクを一度だけ実行してから自身のアクションを実行します。

タスクは通常 [Kernel#task](../method/Kernel/i/task.md), [Kernel#file](../method/Kernel/i/file.md) という便利なメソッドを使用して定義します。

## Class Methods

- [\[\]](../method/Rake=3a=3aTask/s/=5b=5d.md)
- [clear](../method/Rake=3a=3aTask/s/clear.md)
- [create_rule](../method/Rake=3a=3aTask/s/create_rule.md)
- [define_task](../method/Rake=3a=3aTask/s/define_task.md)
- [new](../method/Rake=3a=3aTask/s/new.md)
- [scope_name](../method/Rake=3a=3aTask/s/scope_name.md)
- [task_defined?](../method/Rake=3a=3aTask/s/task_defined=3f.md)
- [tasks](../method/Rake=3a=3aTask/s/tasks.md)

## Instance Methods

- [actions](../method/Rake=3a=3aTask/i/actions.md)
- [add_description](../method/Rake=3a=3aTask/i/add_description.md)
- [application](../method/Rake=3a=3aTask/i/application.md)
- [application=](../method/Rake=3a=3aTask/i/application=3d.md)
- [arg_description](../method/Rake=3a=3aTask/i/arg_description.md)
- [arg_names](../method/Rake=3a=3aTask/i/arg_names.md)
- [clear](../method/Rake=3a=3aTask/i/clear.md)
- [clear_actions](../method/Rake=3a=3aTask/i/clear_actions.md)
- [clear_prerequisites](../method/Rake=3a=3aTask/i/clear_prerequisites.md)
- [comment](../method/Rake=3a=3aTask/i/comment.md)
- [comment=](../method/Rake=3a=3aTask/i/comment=3d.md)
- [enhance](../method/Rake=3a=3aTask/i/enhance.md)
- [execute](../method/Rake=3a=3aTask/i/execute.md)
- [full_comment](../method/Rake=3a=3aTask/i/full_comment.md)
- [inspect](../method/Rake=3a=3aTask/i/inspect.md)
- [investigation](../method/Rake=3a=3aTask/i/investigation.md)
- [invoke](../method/Rake=3a=3aTask/i/invoke.md)
- [name](../method/Rake=3a=3aTask/i/name.md)
- [needed?](../method/Rake=3a=3aTask/i/needed=3f.md)
- [prerequisites](../method/Rake=3a=3aTask/i/prerequisites.md)
- [reenable](../method/Rake=3a=3aTask/i/reenable.md)
- [scope](../method/Rake=3a=3aTask/i/scope.md)
- [set_arg_names](../method/Rake=3a=3aTask/i/set_arg_names.md)
- [source](../method/Rake=3a=3aTask/i/source.md)
- [sources](../method/Rake=3a=3aTask/i/sources.md)
- [sources=](../method/Rake=3a=3aTask/i/sources=3d.md)
- [timestamp](../method/Rake=3a=3aTask/i/timestamp.md)
- [to_s](../method/Rake=3a=3aTask/i/to_s.md)
