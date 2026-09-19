# Gem?.find_latest_files

### module_function def find_latest_files(glob, check_load_path = true) -> [String]
{: since="2.1.0"}

`glob` にマッチするパスを、最新バージョンの Gem や `$LOAD_PATH` から探して返します。

[Gem?.find_files](../../../method/Gem/m/find_files.md) と異なり、同じ Gem については最新バージョンのファイルだけを返します。

- **param** `glob` -- 検索するファイルパスのパターンです。
- **param** `check_load_path` -- 真の場合、`$LOAD_PATH` からも検索します。省略した場合は真になります。
- **return** -- 見つかったファイルパスの配列です。
- **SEE** [Gem?.find_files](../../../method/Gem/m/find_files.md)
