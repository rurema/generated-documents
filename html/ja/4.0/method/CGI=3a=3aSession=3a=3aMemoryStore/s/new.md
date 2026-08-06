# CGI::Session::MemoryStore.new

### def CGI::Session::MemoryStore.new(session, option = nil) -> CGI::Session::MemoryStore

自身を初期化します。

[CGI::Session](../../../class/CGI=3a=3aSession.md) クラス内部で使用します。
ユーザが明示的に呼び出す必要はありません。

- **param** `session` -- [CGI::Session](../../../class/CGI=3a=3aSession.md) のインスタンスを指定します。

- **param** `option` -- ハッシュを指定します。

- **raise** `CGI::Session::NoSession` -- セッションが初期化されていない場合に発生します。
