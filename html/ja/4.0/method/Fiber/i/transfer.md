# Fiber#transfer

### def transfer(*args) -> object

自身が表すファイバーへコンテキストを切り替えます。

自身は [Fiber#resume](../../../method/Fiber/i/resume.md) を呼んだファイバーの子となります。
[Fiber#resume](../../../method/Fiber/i/resume.md) との違いは、ファイバーが終了したときや [Fiber.yield](../../../method/Fiber/s/yield.md) が呼ばれたときは、ファイバーの親へ戻らずにメインファイバーへ戻ります。

- **param** `args` -- メインファイバーから呼び出した [Fiber#resume](../../../method/Fiber/i/resume.md) メソッドの返り値として渡したいオブジェクトを指定します。

- **return** -- コンテキスト切り替えの際に、[Fiber#resume](../../../method/Fiber/i/resume.md) メソッドに与えられた引数を返します。

- **raise** `FiberError` -- 自身が既に終了している場合、コンテキストの切り替えが [Thread](../../../class/Thread.md) クラスが表すスレッド間をまたがる場合、
                  [Fiber#resume](../../../method/Fiber/i/resume.md) を呼んだファイバーがその親か先祖である場合に発生します。

```ruby title="例:"
require 'fiber'

fr1 = Fiber.new do |v|
:fugafuga
end

fr2 = Fiber.new do |v|
fr1.transfer
:fuga
end

fr3 = Fiber.new do |v|
fr2.resume
:hoge
end

p fr3.resume # => :fugafuga
```
