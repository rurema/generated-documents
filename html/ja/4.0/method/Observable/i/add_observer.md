# Observable#add_observer

### def add_observer(observer, func=:update) -> Array

オブザーバを登録します。

オブザーバを登録し、登録されているオブザーバのリストを返します。

オブザーバは update メソッドを備えている必要があります。

observer が update メソッドを持たないときは例外 [NoMethodError](../../../class/NoMethodError.md) が発生します。

func を指定することで update 以外のメソッドを通知に用いることができます。

- **param** `observer` -- 更新の通知を受けるオブザーバ
- **param** `func` -- 更新の通知をするメソッド
- **raise** `NoMethodError` -- updateメソッドを持たないオブジェクトをオブザーバに指定した場合に発生します。
