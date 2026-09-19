# Gem?.find_files

### module_function def find_files(glob, check_load_path = true) -> [String]
{: since="1.9.2"}

`glob` にマッチするパスの一覧を、Gem や `$LOAD_PATH` から探して返します。

他の Gem が提供する機能を取り込むために使います。異なるバージョンの同じ Gem のファイルであってもすべて返します。最新バージョンの Gem のファイルだけがほしい場合は [Gem?.find_latest_files](../../../method/Gem/m/find_latest_files.md) を使ってください。

- **param** `glob` -- 検索するファイルパスのパターンです。
- **param** `check_load_path` -- 真の場合、`$LOAD_PATH` からも検索します。省略した場合は真になります。
- **return** -- 見つかったファイルパスの配列です。

```ruby title="例"
Gem.find_files("rdoc/discover").each {|path| load path }
```

- **SEE** [Gem?.find_latest_files](../../../method/Gem/m/find_latest_files.md)
