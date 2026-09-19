# Gem?.ui

### module_function def ui -> Gem::ConsoleUI
{: since="1.9.2"}

RubyGems が既定で使う UI(ユーザーとの対話)オブジェクトを返します。

遅延読み込みされる `Gem::DefaultUserInteraction` 経由で取得します。既定では [Gem::ConsoleUI](../../../class/Gem=3a=3aConsoleUI.md) のインスタンスですが、`Gem::DefaultUserInteraction.use_ui` で別の UI オブジェクトに切り替えられている場合はそちらを返します。

- **return** -- RubyGems が既定で使う UI オブジェクトです。
- **SEE** [Gem::ConsoleUI](../../../class/Gem=3a=3aConsoleUI.md)
