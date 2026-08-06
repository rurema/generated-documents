# class OptionParser < Object

コマンドラインのオプションを取り扱うためのクラスです。

オプションが指定された時に呼ばれるブロックを
[OptionParser#on](../method/OptionParser/i/on.md) メソッドで登録していきます。
つまり、OptionParser を使う場合、基本的には

  1. OptionParser オブジェクト opt を生成する。
  2. オプションを取り扱うブロックを opt に登録する。
  3. opt.parse(ARGV) でコマンドラインを実際に parse する。

というような流れになります。

```ruby
require "optparse"
ProgramConfig = Hash.new
opts = OptionParser.new
opts.on("-a"){|v| ProgramConfig[:a] = true } # オプション「-a」がコマンドラインで指定されていた場合の動作。
opts.parse!(ARGV)                            # 実際にコマンドラインの parse を行う。
```

### デフォルトで利用可能なオプション

以下はデフォルトで利用可能なオプションです。オプションサマリには出てきません。

- **`--help`**:
  オプションサマリを表示してから exit します。

- **`--version`**:

  [OptionParser#ver](../method/OptionParser/i/ver.md) を表示してから exit します。
  [OptionParser#ver](../method/OptionParser/i/ver.md) が定義されていない場合は、そのようにエラーメッセージを出力して abort します。
  オプション「--version」に「,」で区切られたクラス名かモジュール名を引数として与えた場合は、そのクラスおよびモジュールで定義されている定数「Version」および「Release」を表示して、終了します。
  ```
   $ ruby t.rb --version=OptionParser,URI,OpenSSL
   t: OptionParser version 12203 (2007-04-20)
   t: URI version 0.9.11
   t: OpenSSL version 1.0.0
  ```

## Class Methods

- [accept](../method/OptionParser/s/accept.md)
- [getopts](../method/OptionParser/s/getopts.md)
- [new](../method/OptionParser/s/new.md)
- [reject](../method/OptionParser/s/reject.md)

## Instance Methods

- [accept](../method/OptionParser/i/accept.md)
- [banner](../method/OptionParser/i/banner.md)
- [banner=](../method/OptionParser/i/banner=3d.md)
- [default_argv](../method/OptionParser/i/default_argv.md)
- [default_argv=](../method/OptionParser/i/default_argv=3d.md)
- [environment](../method/OptionParser/i/environment.md)
- [getopts](../method/OptionParser/i/getopts.md)
- [help](../method/OptionParser/i/help.md)
- [to_s](../method/OptionParser/i/to_s.md)
- [load](../method/OptionParser/i/load.md)
- [make_switch](../method/OptionParser/i/make_switch.md)
- [on](../method/OptionParser/i/on.md)
- [on_head](../method/OptionParser/i/on_head.md)
- [on_tail](../method/OptionParser/i/on_tail.md)
- [order](../method/OptionParser/i/order.md)
- [order!](../method/OptionParser/i/order=21.md)
- [parse](../method/OptionParser/i/parse.md)
- [parse!](../method/OptionParser/i/parse=21.md)
- [permute](../method/OptionParser/i/permute.md)
- [permute!](../method/OptionParser/i/permute=21.md)
- [program_name](../method/OptionParser/i/program_name.md)
- [program_name=](../method/OptionParser/i/program_name=3d.md)
- [reject](../method/OptionParser/i/reject.md)
- [release](../method/OptionParser/i/release.md)
- [release=](../method/OptionParser/i/release=3d.md)
- [separator](../method/OptionParser/i/separator.md)
- [summarize](../method/OptionParser/i/summarize.md)
- [summary_indent](../method/OptionParser/i/summary_indent.md)
- [summary_indent=](../method/OptionParser/i/summary_indent=3d.md)
- [summary_width](../method/OptionParser/i/summary_width.md)
- [summary_width=](../method/OptionParser/i/summary_width=3d.md)
- [to_a](../method/OptionParser/i/to_a.md)
- [ver](../method/OptionParser/i/ver.md)
- [version](../method/OptionParser/i/version.md)
- [version=](../method/OptionParser/i/version=3d.md)
