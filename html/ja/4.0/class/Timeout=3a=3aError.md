# class Timeout::Error < RuntimeError

[timeout](../library/timeout.md) で定義される例外クラスです。
関数 timeout がタイムアウトすると発生します。

[timeout](../library/timeout.md) を使うライブラリを作成する場合は、ユーザが指定した
timeout を捕捉しないようにライブラリ内で Timeout::Error のサブクラスを定義して使用した方が無難です。

```text
==> foo.rb <==
require 'timeout.rb'
class Foo
  FooTimeoutError = Class.new(Timeout::Error)
  def longlongtime_method
    Timeout.timeout(100, FooTimeoutError) {
       ...
    }
  end
end

==> main.rb <==
require 'foo'
Timeout.timeout(5) {
  Foo.new.longlongtime_method
}
```
