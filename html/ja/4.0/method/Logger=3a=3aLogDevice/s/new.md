# Logger::LogDevice.new

### def Logger::LogDevice.new(log = nil, shift_age: nil, shift_size: nil, shift_period_suffix: nil, binmode: false, reraise_write_errors: [], skip_header: false) -> Logger::LogDevice

ログの出力先を初期化します。

- **param** `log` -- ログの出力先。ログを書き込むファイル名か、[IO](../../../class/IO.md) オブジェクトを指定します。
           省略すると nil が使用されますが、実行中に例外が発生します。

- **param** `shift_age` -- ログファイルを保持する数か、ログファイルを切り替える頻度を指定します。
                 頻度には daily, weekly, monthly を文字列で指定できます。
                 `log` にファイル名を指定した場合のみ有効です。省略した場合は 7 です。

- **param** `shift_size` -- `shift_age` を整数で指定した場合のみ有効です。
                  このサイズ(バイト数)でログファイルを切り替えます。省略した場合は 1048576 (1 MByte) です。

- **param** `shift_period_suffix` -- daily、weekly、monthly でログファイルの切り替えを行う時のログファイルの名の末尾に追加する文字列のフォーマットを指定します。
                           省略した場合は '%Y%m%d' です。

- **param** `binmode` -- ログファイルをバイナリモードで書き込むかどうかを指定します。
               省略した場合は false です。

- **param** `reraise_write_errors` -- ログの書き込みやログファイルの切り替えで発生した例外のうち、再度 raise する例外クラスの配列を指定します。
                            それ以外の例外は警告を出して無視します。省略した場合は空配列です。

- **param** `skip_header` -- true を指定すると、ログファイルを新規作成するときに先頭のヘッダー行(`# Logfile created on ...`)を書き込みません。
                   省略した場合は false です。


- **SEE** [Logger.new](../../../method/Logger/s/new.md)
