# Net::IMAP#uid_thread

### def uid_thread(algorithm, search_keys, charset)  -> [Net::IMAP::ThreadMember]

THREADコマンドを送り、メールボックスを検索した結果をスレッド形式の木構造で返します。

ほぼ [Net::IMAP#thread](../../../method/Net=3a=3aIMAP/i/thread.md) と同じですが、返ってくるオブジェクトの
[Net::IMAP::ThreadMember#seqno](../../../method/Net=3a=3aIMAP=3a=3aThreadMember/i/seqno.md) の内容が message sequence number
ではなく UID となります。

- **param** `algorithm` -- スレッド構造構築アルゴリズム名(文字列)
- **param** `search_key` -- 検索条件(文字列配列)
- **param** `charset` -- 検索条件の解釈に用いるCHARSET名(文字列)
- **SEE** [Net::IMAP::ThreadMember](../../../class/Net=3a=3aIMAP=3a=3aThreadMember.md), [Net::IMAP#thread](../../../method/Net=3a=3aIMAP/i/thread.md)
