# Net::FTP#mlst

### def mlst(pathname = nil) -> Net::FTP::MLSxEntry

pathname で指定したファイル/ディレクトリの詳細な情報を得ます。

[Net::FTP::MLSxEntry](../../../class/Net=3a=3aFTP=3a=3aMLSxEntry.md) のインスタンスに得られた情報が保持されます。どのような情報を取り出せるかは [Net::FTP::MLSxEntry](../../../class/Net=3a=3aFTP=3a=3aMLSxEntry.md)
を参照してください。
[Net::FTP#list](../../../method/Net=3a=3aFTP/i/list.md) は結果が文字列で得られるため、それを適当に解釈する必要がありますが、このコマンドの結果は適切に解釈された結果を直接得ることができます。

pathname を省略した場合はカレントディレクトリを指定したことになります。

FTP の MLST コマンド [rfc:3659] を使います。

- **param** `pathname` -- 情報を得るファイルパス
- **SEE** [Net::FTP#mlsd](../../../method/Net=3a=3aFTP/i/mlsd.md)
