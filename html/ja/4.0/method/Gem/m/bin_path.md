# Gem?.bin_path

### module_function def bin_path(name, exec_name = nil, *requirements) -> String
{: since="1.9.2"}

Gem `name` に含まれる実行可能ファイル `exec_name` のフルパスを返します。

`exec_name` を省略した場合は例外が発生します。`requirements` で特定のバージョンを指定できます。Gem を有効化(activate)する副作用はありません。

- **param** `name` -- 実行可能ファイルを含む Gem の名前です。
- **param** `exec_name` -- 実行可能ファイルの名前です。省略すると例外が発生します。
- **param** `requirements` -- 使用する Gem のバージョンを指定します。[Gem::Requirement](../../../class/Gem=3a=3aRequirement.md) が解釈できる形式で複数指定できます。
- **return** -- 実行可能ファイルのフルパスです。
- **raise** `ArgumentError` -- `exec_name` を指定しなかった場合に発生します。
- **raise** `Gem::GemNotFoundException` -- 条件に一致する Gem や実行可能ファイルが見つからなかった場合に発生します。
