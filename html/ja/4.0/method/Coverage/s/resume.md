# Coverage.resume

### def Coverage.resume -> nil

カバレッジの測定を開始、または再開します。

事前に [Coverage.setup](../../../method/Coverage/s/setup.md) で測定の準備をしておく必要があります。

現在のところプロセス全体のカバレッジしか測定できません。スレッドごとのカバレッジは測定できないため、
複数のスレッドを持つプロセスで [Coverage.resume](../../../method/Coverage/s/resume.md) と [Coverage.suspend](../../../method/Coverage/s/suspend.md) を使って
特定のコードブロックの実行だけをカバレッジ測定の対象にしようとすると、意図しない結果になることがあります。

- **raise** `RuntimeError` -- [Coverage.setup](../../../method/Coverage/s/setup.md) を実行する前に実行した場合、または既に測定中の場合に発生します。

```ruby
require "coverage"
Coverage.setup
Coverage.resume
p Coverage.state  # => :running
```

- **SEE** [Coverage.setup](../../../method/Coverage/s/setup.md), [Coverage.suspend](../../../method/Coverage/s/suspend.md)
