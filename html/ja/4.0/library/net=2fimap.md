# library net/imap

このライブラリは Internet Message Access Protocol (IMAP) のクライアントライブラリです。[RFC:2060] を元に実装されています。

### IMAP の概要

IMAPを利用するには、まずサーバに接続し、
[Net::IMAP#authenticate](../method/Net=3a=3aIMAP/i/authenticate.md) もしくは
[Net::IMAP#login](../method/Net=3a=3aIMAP/i/login.md) で認証します。
IMAP ではメールボックスという概念が重要です。
メールボックスは階層的な名前を持ちます。
各メールボックスはメールを保持できます。
メールボックスの実装はサーバソフトウェアによって異なります。
Unixシステムでは、ディレクトリ階層上のファイルを個々のメールボックスとみなして実装されることが多いです。

メールボックス内のメッセージ(メール)を処理する場合、まず [Net::IMAP#select](../method/Net=3a=3aIMAP/i/select.md) もしくは
[Net::IMAP#examine](../method/Net=3a=3aIMAP/i/examine.md) で処理対象のメールボックスを指定する必要があります。これらの操作が成功したならば、「selected」状態に移行し、そのメールボックスが「処理対象の」メールボックスとなります。このようにしてメールボックスを選択してから、selected状態を終える(別のメールボックスを選択したり、接続を終了したり)までをセッションと呼びます。

メッセージには2種類の識別子が存在します。message sequence number と
UID です。

message sequence number はメールボックス内の各メッセージに1から順に振られた番号です。セッション中に処理対象のメールボックスに新たなメッセージが追加された場合、そのメッセージの
message sequence number は最後のメッセージの message sequence number+1となります。
メッセージをメールボックスから消した場合には、連番の穴を埋めるように
message sequence number が付け替えられます。

一方、UID はセッションを越えて恒久的に保持されます。
あるメールボックス内の異なる2つのメッセージが同じ  UID
を持つことはありません。
これは、メッセージがメールボックスから削除された後でも成立します。

しかし、UID はメールボックス内で昇順であることが規格上要請されているので、
IMAP を使わないメールアプリケーションがメールの順番を変えてしまった場合は、UID が振り直されます。

### 例

デフォルトのメールボックス(INBOX)の送り元とサブジェクトを表示する。

```ruby
require 'net/imap'

imap = Net::IMAP.new('mail.example.com')
imap.authenticate('LOGIN', 'joe_user', 'joes_password')
imap.examine('INBOX')
imap.search(["RECENT"]).each do |message_id|
  envelope = imap.fetch(message_id, "ENVELOPE")[0].attr["ENVELOPE"]
  puts "#{envelope.from[0].name}: \t#{envelope.subject}"
end
```

2003年4月のメールをすべて Mail/sent-mail から "Mail/sent-apr03" へ移動させる

```ruby
require 'net/imap'

imap = Net::IMAP.new('mail.example.com')
imap.authenticate('LOGIN', 'joe_user', 'joes_password')
imap.select('Mail/sent-mail')
if not imap.list('Mail/', 'sent-apr03')
  imap.create('Mail/sent-apr03')
end
imap.search(["BEFORE", "30-Apr-2003", "SINCE", "1-Apr-2003"]).each do |message_id|
  imap.copy(message_id, "Mail/sent-apr03")
  imap.store(message_id, "+FLAGS", [:Deleted])
end
imap.expunge
```

### スレッド安全性

Net::IMAP は並列実行をサポートしています。例として、

```ruby
require 'net/imap'

imap = Net::IMAP.new("imap.foo.net", "imap2")
imap.authenticate("cram-md5", "bar", "password")
imap.select("inbox")
fetch_thread = Thread.start { imap.fetch(1..-1, "UID") }
search_result = imap.search(["BODY", "hello"])
fetch_result = fetch_thread.value
imap.disconnect
```

とすると FETCH コマンドと SEARCH コマンドを並列に実行します。

### エラーについて

IMAP サーバは以下の3種類のエラーを送ります。

- **`NO`**:
  コマンドが正常に完了しなかったことを意味します。
  例えば、ログインでのユーザ名/パスワードが間違っていた、選択したメールボックスが存在しない、などです。

- **`BAD`**:
  クライアントからのリクエストをサーバが理解できなかったことを意味します。
  クライアントの現在の状態では使えないコマンドを使おうとした場合にも発生します。例えば、
  selected状態(SELECT/EXAMINEでこの状態に移行する)にならずに
  SEARCH コマンドを使おうとした場合に発生します。
  サーバの内部エラー(ディスクが壊れたなど)の場合もこのエラーが発生します。

- **`BYE`**:
  サーバが接続を切ろうとしていることを意味します。
  これは通常のログアウト処理で発生します。
  また、ログイン時にサーバが(なんらかの理由で)接続したくない場合にも発生します。
  それ以外では、サーバがシャットダウンする場合かサーバがタイムアウトする場合に発生します。

これらのエラーはそれぞれ
  - [Net::IMAP::NoResponseError](../class/Net=3a=3aIMAP=3a=3aNoResponseError.md)
  - [Net::IMAP::BadResponseError](../class/Net=3a=3aIMAP=3a=3aBadResponseError.md)
  - [Net::IMAP::ByeResponseError](../class/Net=3a=3aIMAP=3a=3aByeResponseError.md)
という例外クラスに対応しています。
原理的には、これらの例外はサーバにコマンドを送った場合には常に発生する可能性があります。しかし、このドキュメントではよくあるエラーのみ解説します。

IMAP は Socket で通信をするため、IMAPクラスのメソッドは
Socket 関連のエラーが発生するかもしれません。例えば、通信中に接続が切れると [Errno::EPIPE](../class/Errno=3a=3aEPIPE.md) 例外が発生します。詳しくは [Socket](../class/Socket.md) などを見てください。

[Net::IMAP::DataFormatError](../class/Net=3a=3aIMAP=3a=3aDataFormatError.md)、
[Net::IMAP::ResponseParseError](../class/Net=3a=3aIMAP=3a=3aResponseParseError.md) という例外クラスも存在します。前者はデータのフォーマットが正しくない場合に、後者はサーバからのレスポンスがパースできない場合に発生します。
これらのエラーはこのライブラリもしくはサーバに深刻な問題があることを意味します。

### tagged response と untagged response

IMAP プロトコルにおいてサーバからの応答には tagged なものと
untagged なものの2通り存在します。
tagged な応答は、クライアントからのコマンドが成功もしくは失敗のいずれかで完了したことを表すものです。
一方 untagged な応答はそれ以外の情報を渡すためのものです。
untagged な応答はクライアントからのコマンドの結果の情報を渡すためにも用いられますし、そうでない(サーバのシャットダウンなど)
自発的応答にも用いられます。

これはそれぞれ
[Net::IMAP::TaggedResponse](../class/Net=3a=3aIMAP=3a=3aTaggedResponse.md) と [Net::IMAP::UntaggedResponse](../class/Net=3a=3aIMAP=3a=3aUntaggedResponse.md)
に対応します。

untagged な応答はコマンドの送信とは非同期的にサーバから送られるため、
[Net::IMAP](../class/Net=3a=3aIMAP.md) オブジェクトはユーザのためこれを
[Net::IMAP#responses](../method/Net=3a=3aIMAP/i/responses.md) に記録しておきます。

### References

  - [IMAP]
    M. Crispin, "INTERNET MESSAGE ACCESS PROTOCOL - VERSION 4rev1",
    RFC 2060, December 1996.

  - [LANGUAGE-TAGS]
    Alvestrand, H., "Tags for the Identification of
    Languages", RFC 1766, March 1995.

  - [MD5]
    Myers, J., and M. Rose, "The Content-MD5 Header Field", RFC
    1864, October 1995.

  - [MIME-IMB]
    Freed, N., and N. Borenstein, "MIME (Multipurpose Internet
    Mail Extensions) Part One: Format of Internet Message Bodies", RFC
    2045, November 1996.

  - [RFC-822]
    Crocker, D., "Standard for the Format of ARPA Internet Text
    Messages", STD 11, RFC 822, University of Delaware, August 1982.

  - [RFC-2087]
    Myers, J., "IMAP4 QUOTA extension", RFC 2087, January 1997.

  - [RFC-2086]
    Myers, J., "IMAP4 ACL extension", RFC 2086, January 1997.

  - [OSSL]
    <https://www.openssl.org/>

  - [RSSL]
    <http://savannah.gnu.org/projects/rubypki>

以上のうち、いくつかの RFC は obsolete になって置き換えられています。
[RFC:2060] は [RFC:3501] に、[RFC:822] は [RFC:2822] に、置き換えられています。
