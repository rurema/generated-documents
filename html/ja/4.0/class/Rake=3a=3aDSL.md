# module Rake::DSL

Rakefile の中で使うタスク定義などの DSL メソッドを定義するモジュールです。

`require "rake"` すると main オブジェクトがこのモジュールで
extend されるため、Rakefile のトップレベルでは task や desc などを
直接呼び出せます。

## Private Instance Methods

- [desc](../method/Rake=3a=3aDSL/i/desc.md)
- [directory](../method/Rake=3a=3aDSL/i/directory.md)
- [file](../method/Rake=3a=3aDSL/i/file.md)
- [file_create](../method/Rake=3a=3aDSL/i/file_create.md)
- [import](../method/Rake=3a=3aDSL/i/import.md)
- [multitask](../method/Rake=3a=3aDSL/i/multitask.md)
- [namespace](../method/Rake=3a=3aDSL/i/namespace.md)
- [rule](../method/Rake=3a=3aDSL/i/rule.md)
- [task](../method/Rake=3a=3aDSL/i/task.md)
