# class Resolv < Object

リゾルバを表すクラスです。
このクラス自体は実際には名前解決をせず、
[Resolv.new](../method/Resolv/s/new.md) で与えられたリゾルバに順に問合せることしかしません。

このクラスのクラスメソッドで名前解決をした場合には、内部で /etc/hosts, DNS の順に問合せます。

順に問合せる過程で、あるリゾルバが1個以上の結果を返した場合、それ以降のリゾルバには問い合わせをしません。

## Class Methods

- [each_address](../method/Resolv/s/each_address.md)
- [each_name](../method/Resolv/s/each_name.md)
- [getaddress](../method/Resolv/s/getaddress.md)
- [getaddresses](../method/Resolv/s/getaddresses.md)
- [getname](../method/Resolv/s/getname.md)
- [getnames](../method/Resolv/s/getnames.md)
- [new](../method/Resolv/s/new.md)

## Instance Methods

- [each_address](../method/Resolv/i/each_address.md)
- [each_name](../method/Resolv/i/each_name.md)
- [getaddress](../method/Resolv/i/getaddress.md)
- [getaddresses](../method/Resolv/i/getaddresses.md)
- [getname](../method/Resolv/i/getname.md)
- [getnames](../method/Resolv/i/getnames.md)

## Constants

- [AddressRegex](../method/Resolv/c/AddressRegex.md)
- [DefaultResolver](../method/Resolv/c/DefaultResolver.md)
