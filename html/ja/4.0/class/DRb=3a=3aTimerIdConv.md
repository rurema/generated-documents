# class DRb::TimerIdConv < DRb::DRbIdConv

オブジェクトと識別子を相互に変換するクラスです。
これによって識別子に変換されたオブジェクトは一定時間
GC から保護されます。

[DRb::DRbIdConv](../class/DRb=3a=3aDRbIdConv.md) では to_id で識別子に変換し、リモートに送られたオブジェクトは GC から保護されません。
ローカルプロセスからの参照がなくなったオブジェクトは、リモートからの参照が生きていたとしても GC によって廃棄される可能性があります。
このクラスを DRb::DRbIdConv の代わりに用いることで、
to_id でオブジェクトを識別子に変換してから一定時間([DRb::TimerIdConv.new](../method/DRb=3a=3aTimerIdConv/s/new.md) の timeout で指定した秒数)
の間はそのオブジェクトは GC されないことが保証されます。

このクラスを使う場合はどのタイミングでオブジェクトが識別子に変換されるかを注意する必要があります。
基本的にはオブジェクトをリモートに送る直前に変換されます。

## Class Methods

- [new](../method/DRb=3a=3aTimerIdConv/s/new.md)

## Instance Methods

- [to_id](../method/DRb=3a=3aTimerIdConv/i/to_id.md)
- [to_obj](../method/DRb=3a=3aTimerIdConv/i/to_obj.md)
