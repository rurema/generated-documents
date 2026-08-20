# class KeyError < IndexError

[Hash#fetch](../method/Hash/i/fetch.md) などで key に対応する value がない場合に発生します。

Ruby 1.8 までは同様の場面で [IndexError](../class/IndexError.md) が発生していました。
互換性のため、[KeyError](../class/KeyError.md) は [IndexError](../class/IndexError.md) のサブクラスになっています。

## Class Methods

- [new](../method/KeyError/s/new.md)

## Instance Methods

- [key](../method/KeyError/i/key.md)
- [receiver](../method/KeyError/i/receiver.md)
