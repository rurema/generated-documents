# Coverage.setup

### def Coverage.setup(mode = nil) -> nil
### def Coverage.setup(lines: nil, branches: nil, methods: nil, eval: nil, oneshot_lines: nil) -> nil

カバレッジの測定の準備をします。

このメソッド自体は測定を開始しません。測定を開始するには [Coverage.resume](../../../method/Coverage/s/resume.md) を使います。
準備と開始を同時に行いたい場合は [Coverage.start](../../../method/Coverage/s/start.md) を使ってください。

- **param** `mode` -- `:all` を指定すると、`lines`、`branches`、`methods`、`eval` の全てを計測対象にします。
              省略した場合は行カバレッジのみが対象になります。
- **param** `lines` -- 真を指定すると行カバレッジを計測対象にします。
- **param** `branches` -- 真を指定すると分岐カバレッジを計測対象にします。
- **param** `methods` -- 真を指定するとメソッドカバレッジを計測対象にします。
- **param** `eval` -- 真を指定すると eval カバレッジを計測対象にします。(Ruby 3.2 で追加されたキーワード引数です)
- **param** `oneshot_lines` -- 真を指定すると、行カバレッジを 1 度でも実行されたかどうかだけを記録するモード([coverage](../../../library/coverage.md) ライブラリ参照)で計測対象にします。`lines` と同時には指定できません。

- **raise** `RuntimeError` -- 既に [Coverage.setup](../../../method/Coverage/s/setup.md) 済みの状態で、対象とするモードが異なる引数で呼び出した場合に発生します。

```ruby
require "coverage"
Coverage.setup(lines: true)
p Coverage.state  # => :suspended
Coverage.resume
```

- **SEE** [Coverage.resume](../../../method/Coverage/s/resume.md), [Coverage.start](../../../method/Coverage/s/start.md)
