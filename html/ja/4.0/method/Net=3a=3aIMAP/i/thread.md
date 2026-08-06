# Net::IMAP#thread

### def thread(algorithm, search_keys, charset) -> [Net::IMAP::ThreadMember]

THREADコマンドを送り、メールボックスを検索した結果をスレッド形式の木構造で返します。

THREAD コマンドは [RFC:5256] で定義されています。
詳しくはそちらを参照してください。
このコマンドは [Net::IMAP#capability](../../../method/Net=3a=3aIMAP/i/capability.md) の返り値を見ることで利用可能かどうか判断できます。

algorithm は木構造を決定するためのアルゴリズムを指定します。
以下の2つが利用可能です。
  - "ORDEREDSUBJECT" subjectを使って平坦に区切るだけ
  - "REFERENCES" どのメッセージに返事をしているかを見て木構造を作る
詳しくは [RFC:5256] を見てください。

search_key には検索条件を渡します。
[Net::IMAP#search](../../../method/Net=3a=3aIMAP/i/search.md) と同等です。

- **param** `algorithm` -- スレッド構造構築アルゴリズム名(文字列)
- **param** `search_key` -- 検索条件(文字列配列)
- **param** `charset` -- 検索条件の解釈に用いるCHARSET名(文字列)
- **SEE** [Net::IMAP::ThreadMember](../../../class/Net=3a=3aIMAP=3a=3aThreadMember.md), [Net::IMAP#uid_thread](../../../method/Net=3a=3aIMAP/i/uid_thread.md)
