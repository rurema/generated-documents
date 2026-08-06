# Process?.times

### module_function def times    -> Process::Tms

自身のプロセスとその子プロセスが消費したユーザ/システム CPU 時間の積算を
[Process::Tms](../../../class/Process=3a=3aTms.md) オブジェクトで返します。
時間の単位は秒で、浮動小数点数で与えられます。

- **raise** `NotImplementedError` -- メソッドが現在のプラットフォームで実装されていない場合に発生します。

- **SEE** [Process::Tms](../../../class/Process=3a=3aTms.md)
