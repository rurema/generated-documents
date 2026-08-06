# Net::POPMail#delete

### def delete -> ()
### def delete! -> ()

メールに削除マークを付けます。

削除マークを付けたメールは読み出せなくなります。
セッション終了時に実際に削除されます。
[Net::POP3#reset](../../../method/Net=3a=3aPOP3/i/reset.md) を呼ぶと削除マークは取り消されます。

delete! は obsolete です。

- **raise** `TimeoutError` -- 通信がタイムアウトした場合に発生します
- **raise** `Net::POPError` -- サーバが認証失敗以外のエラーを報告した場合に発生します
- **raise** `Net::POPBadResponse` -- サーバからの応答がプロトコル上不正であった場合に発生します
- **SEE** [Net::POPMail#deleted?](../../../method/Net=3a=3aPOPMail/i/deleted=3f.md)
