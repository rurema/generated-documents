# Readline.special_prefixes=

### def Readline.special_prefixes=(string)
{: since="2.0.0"}
### def Readline.special_prefixes -> String
{: since="2.0.0"}

単語の区切り文字ではあるものの、補完関数に渡すテキストにはそのまま残しておく文字を指定・取得します。プログラムはこれを使って、どのような補完を行うかを判断できます。例えば、 Bash はシェル変数やホスト名を補完できるように、この値を `"$@"` に設定しています。

- **param** `string` -- 文字列を指定します。

- **raise** `NotImplementedError` -- サポートしていない環境で発生します。

- **SEE** GNU Readline ライブラリの rl_special_prefixes 変数
