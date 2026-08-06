# class DRb::DRbObject < Object

リモートの dRuby オブジェクトを表すオブジェクトです。

このクラスのインスタンスはプロキシとして働きます。
つまりインスタンスへのメソッド呼び出しはリモートプロセスに送られリモート側でメソッドが呼び出されます。

内部的には [BasicObject#method_missing](../method/BasicObject/i/method_missing.md) でメソッド呼び出しを
hook して、それを転送します。

## Class Methods

- [new_with_uri](../method/DRb=3a=3aDRbObject/s/new_with_uri.md)

## Instance Methods

- [==](../method/DRb=3a=3aDRbObject/i/=3d=3d.md)
- [eql?](../method/DRb=3a=3aDRbObject/i/eql=3f.md)
- [__drbref](../method/DRb=3a=3aDRbObject/i/__drbref.md)
- [__drburi](../method/DRb=3a=3aDRbObject/i/__drburi.md)
