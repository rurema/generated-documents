# library net/ftp

FTP プロトコルを扱うライブラリです。

基本的には  unix の ftp コマンドのような
command-line interface の FTP クライアントを使ったことのある人にとってわかりやすいインターフェースになっています。
より「Ruby 的」であるインターフェースも用意しています。

FTP については [RFC:959]、[RFC:3659] を参考にしてください。

### バイナリモードとテキストモード

FTP のデータ転送にはテキストモードとバイナリモードがあります。テキストモードで転送する場合には改行を適宜CRLFに変換します。バイナリモードの場合は一切の変換をしません。

通常はバイナリモード以外を使う必要はないでしょう。

[Net::FTP#get](../method/Net=3a=3aFTP/i/get.md)、[Net::FTP#put](../method/Net=3a=3aFTP/i/put.md) は
[Net::FTP#binary](../method/Net=3a=3aFTP/i/binary.md) の値に従ってテキストモードとバイナリモードの一方を選びます。また、
[Net::FTP#getbinaryfile](../method/Net=3a=3aFTP/i/getbinaryfile.md)、[Net::FTP#putbinaryfile](../method/Net=3a=3aFTP/i/putbinaryfile.md)
は [Net::FTP#binary](../method/Net=3a=3aFTP/i/binary.md) の値によらずバイナリモードで、
[Net::FTP#gettextfile](../method/Net=3a=3aFTP/i/gettextfile.md)、[Net::FTP#puttextfile](../method/Net=3a=3aFTP/i/puttextfile.md) は
[Net::FTP#binary](../method/Net=3a=3aFTP/i/binary.md) の値によらずテキストモードでデータ転送が行われます。

### パッシブモードとアクティブモード

FTP はファイル転送やディレクトリ情報取得のためのデータ転送用の TCP コネクションを、サーバとの制御コマンドをやりとりするためのコネクションとは別に作成します。

このデータ転送用コネクションを作成する際に、アクティブモードではサーバ側からクライアント側へコネクションを作り、パッシブモードではクライアント側からサーバ側へコネクションを作ります。

そのため、アクティブモードではサーバ-クライアント間にファイアーウォールや NAT がある場合にはうまく接続できない場合があります。この時にはパッシブモードを利用してください。

デフォルトモードは [Net::FTP.default_passive=](../method/Net=3a=3aFTP/s/default_passive=3d.md) で指定できます。パッシブモードがデフォルトです。

### 例

```ruby title="例1"
require 'net/ftp'
ftp = Net::FTP.new('ftp.example.org')
ftp.login
ftp.passive = true
ftp.chdir('pub/ruby')
files = ftp.list('ruby*')
ftp.getbinaryfile('ruby-1.9.1-p243.tar.bz2', 'ruby.bz2', 1024)
ftp.close
```

```ruby title="例2"
require 'net/ftp'
Net::FTP.open('ftp.example.org') do |ftp|
  ftp.login
  ftp.passive = true
  ftp.chdir('pub/ruby')
  files = ftp.list('*.bz2')
  ftp.getbinaryfile('ruby-1.9.1-p243.tar.bz2', 'ruby.bz2', 1024)
end
```
