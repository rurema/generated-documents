# GetoptLong#get_option

### def get        -> [String, String]
### def get_option -> [String, String]

ARGV から、次のオプションの名前と、もしあればその引数の組を取得します。メソッドは 2 つの値を返し、1 つ目の値がオプション名
(例: --max-size) で、2 つ目がオプションの引数 (例: 20K) です。

get と get_option は常にオプション名を正式名で返します。与えられたオプションが引数を取らないときは、空の文字列 ('') が optarg にセットされます。オプションが
ARGV に残っていないときは、optname, optarg ともに nil にセットされます。メソッドから戻る際に、取得したオプションと引数は自動的に ARGV から取り除かれます。

与えられたコマンド行引数があなたのプログラムのオプションの設定に合わない場合は、エラーとなって、以下のいずれかの例外が発生します。

- [GetoptLong::AmbiguousOption](../../../class/GetoptLong=3a=3aAmbiguousOption.md)
- [GetoptLong::InvalidOption](../../../class/GetoptLong=3a=3aInvalidOption.md)
- [GetoptLong::MissingArgument](../../../class/GetoptLong=3a=3aMissingArgument.md)
- [GetoptLong::NeedlessArgument](../../../class/GetoptLong=3a=3aNeedlessArgument.md)

加えて、静粛 (quiet) フラグが有効になっていない限り、エラーメッセージを標準エラー出力に出力します。

```ruby title="例"
optname, optarg = option_parser.get
```
