# CGI::Session::FileStore.new

### def CGI::Session::FileStore.new(session, option = {}) -> CGI::Session::FileStore

自身を初期化します。

[CGI::Session](../../../class/CGI=3a=3aSession.md) クラス内部で使用します。
ユーザが明示的に呼び出す必要はありません。

- **param** `session` -- [CGI::Session](../../../class/CGI=3a=3aSession.md) のインスタンスを指定します。

- **param** `option` -- ハッシュを指定します。

以下の文字列をキーとして指定できます。

- **`tmpdir`**:
    セッションデータを作成するディレクトリの名前を指定します。
    デフォルトは [Dir.tmpdir](../../../method/Dir/s/tmpdir.md) です。

- **`prefix`**:
    セッションデータのファイル名に与えるプレフィックスを指定します。
    デフォルトは空文字列です。

- **`suffix`**:
    セッションデータのファイル名に与えるサフィックスを指定します。
    デフォルトは空文字列です。

- **raise** `CGI::Session::NoSession` -- セッションが初期化されていない場合に発生します。
