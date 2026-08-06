# class Ractor::MovedObject < BasicObject

[Ractor#send](../method/Ractor/i/send.md) によって他の Ractor に移動（move）されたオブジェクトを置き換えるオブジェクトのクラスです。

Ractor::MovedObject のインスタンスに対しては、あらゆるアクセスを行えません。
アクセスを試みた場合、 Ractor::MovedError が発生します。
これには inspect 等を含むあらゆるメソッド呼び出しも含まれます。
