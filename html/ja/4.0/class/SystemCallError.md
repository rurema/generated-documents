# class SystemCallError < StandardError

Ruby の実装に用いられているシステムコールまたは一部の C 言語関数が失敗した時に発生する例外です。
システムコールの失敗した原因を表すエラーコードを保持します。

多くの場合、実際には SystemCallError そのものではなくサブクラスである [Errno::EXXX](../class/Errno=3a=3aEXXX.md) (XXX はエラーコードの値によって異なる。
システム定義のエラー名と同じ名前) が発生します。
詳しくは [Errno::EXXX](../class/Errno=3a=3aEXXX.md) を参照してください。

## Class Methods

- [===](../method/SystemCallError/s/=3d=3d=3d.md)
- [new](../method/SystemCallError/s/new.md)

## Instance Methods

- [errno](../method/SystemCallError/i/errno.md)
