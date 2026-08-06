# module Ruby

Ruby の実装間で可搬な情報を集めたモジュールです。
Ruby 4.0 で導入されました。

このモジュールで定義されている定数は、トップレベルで `RUBY_` を接頭辞に付けた定数（`RUBY_VERSION` など）と同じ値で参照できます。
たとえば `Ruby::VERSION` と [Object::RUBY_VERSION](../method/Object/c/RUBY_VERSION.md) は同じ文字列を返します。

また、このモジュールの下には、クラスやモジュールをプロセス内で隔離する実験的機能のためのクラス `Ruby::Box` も定義されています。

## Constants

- [COPYRIGHT](../method/Ruby/c/COPYRIGHT.md)
- [DESCRIPTION](../method/Ruby/c/DESCRIPTION.md)
- [ENGINE](../method/Ruby/c/ENGINE.md)
- [ENGINE_VERSION](../method/Ruby/c/ENGINE_VERSION.md)
- [PATCHLEVEL](../method/Ruby/c/PATCHLEVEL.md)
- [PLATFORM](../method/Ruby/c/PLATFORM.md)
- [RELEASE_DATE](../method/Ruby/c/RELEASE_DATE.md)
- [REVISION](../method/Ruby/c/REVISION.md)
- [VERSION](../method/Ruby/c/VERSION.md)
