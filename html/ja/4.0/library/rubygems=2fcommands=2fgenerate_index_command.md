# library rubygems/commands/generate_index_command

ある Gem サーバに対するインデックスを作成するためのライブラリです。

```text
Usage: gem generate_index [options]
  Options:
    -d, --directory=DIRNAME          repository base dir containing gems subdir
```

```text
Common Options:
  -h, --help                       このコマンドのヘルプを表示します
  -V, --[no-]verbose               表示を詳細にします
  -q, --quiet                      静かに実行します
      --config-file FILE           指定された設定ファイルを使用します
      --backtrace                  バックトレースを表示します
      --debug                      Ruby 自体のデバッグオプションを有効にします
```

```text
Summary:
  Generates the index files for a gem server directory
Description:
  The generate_index command creates a set of indexes for serving gems
  statically.  The command expects a 'gems' directory under the path given to
  the --directory option.  When done, it will generate a set of files like
  this:
  
    gems/                                        # .gem files you want to
  index
    quick/index
    quick/index.rz                               # quick index manifest
    quick/<gemname>.gemspec.rz                   # legacy YAML quick index
  file
    quick/Marshal.<version>/<gemname>.gemspec.rz # Marshal quick index file
    Marshal.<version>
    Marshal.<version>.Z # Marshal full index
    yaml
    yaml.Z # legacy YAML full index
  
  The .Z and .rz extension files are compressed with the inflate algorithm.
  The
  Marshal version number comes from ruby's Marshal::MAJOR_VERSION and
  Marshal::MINOR_VERSION constants.  It is used to ensure compatibility.  The
  yaml indexes exist for legacy RubyGems clients and fallback in case of
  Marshal
  version changes.
Defaults:
  --directory .
```
