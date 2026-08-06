# OpenSSL::Config#add_value

### def add_value(section, name, value) -> String

section で指定したセクションにある name というキーの情報を value に変更します。

指定した section が存在しない場合には新たにそのセクションがオブジェクト内に作られます。
指定した name が存在しない場合も同様に新たな領域がそのオブジェクト内に作られます。指定した name が存在した場合には情報が上書きされます。

value を返します。

- **param** `section` -- セクションを表す文字列
- **param** `name` -- キーを表す文字列
- **param** `value` -- 変更後の値の文字列
- **raise** `OpenSSL::ConfigError` -- 設定に失敗した場合に発生します
