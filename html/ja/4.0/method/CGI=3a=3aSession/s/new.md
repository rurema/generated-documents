# CGI::Session.new

### def CGI::Session.new(request, option = {}) -> CGI::Session

セッションオブジェクトを新しく作成し返します。

- **param** `request` -- [CGI](../../../class/CGI.md) のインスタンスを指定します。

- **param** `option` -- ハッシュを指定できます。

以下の文字列が option のキーとして認識されます。

- **`session_key`**:
  クッキーと <FORM type=hidden> の name として使われます。
  (default: "_session_id")

- **`session_id`**:
  セッション ID として使われます。
  デフォルトのデータベースである FileStore を用いる場合,
  値は英数字だけからなる文字列で無ければなりません。
  このオプションを指定するとリクエストにセッション ID が含まれても無視します。
  (default: ランダムに生成されます)

- **`new_session`**:
    値が true のときは強制的に新しいセッションを始めます。
    値が false のときは、リクエストにセッション ID が含まれていない場合に
    例外 [ArgumentError](../../../class/ArgumentError.md) が発生します。
    値がないときは、リクエストにセッション ID が
    含まれている場合はそれを使用し、含まれていない場合は新しいセッションを始めます。
    (default: 偽)

- **`database_manager`**:
  データベースクラスを指定します。
  組み込みで [CGI::Session::FileStore](../../../class/CGI=3a=3aSession=3a=3aFileStore.md), [CGI::Session::MemoryStore](../../../class/CGI=3a=3aSession=3a=3aMemoryStore.md),
  [CGI::Session::PStore](../../../class/CGI=3a=3aSession=3a=3aPStore.md) を提供しています。デフォルトは [CGI::Session::FileStore](../../../class/CGI=3a=3aSession=3a=3aFileStore.md) です。

- **`session_expires`**:
    セッションの有効期間。
    [Time](../../../class/Time.md) オブジェクトを与えると、セッションはその日時まで破棄されずに残ります。
    デフォルトでは、セッションはブラウザの終了と同時に破棄されます。

- **`session_domain`**:
  セッションが有効となるドメインを指定します。
  デフォルトでは、CGI を実行しているサーバのホスト名になります。

- **`session_secure`**:
  真を指定すると HTTPS の場合のみ有効になります。

- **`session_path`**:
  クッキーの path として使われます。
  デフォルトは File.dirname(ENV["SCRIPT_NAME"]) です。
  つまり、スクリプトの URI の path 部の最後のスラッシュまでです。

- **`tmpdir`**:
    [CGI::Session::FileStore](../../../class/CGI=3a=3aSession=3a=3aFileStore.md) がセッションデータを作成するディレクトリの名前を指定します。
    デフォルトは [Dir.tmpdir](../../../method/Dir/s/tmpdir.md) です。

- **`prefix`**:
    [CGI::Session::FileStore](../../../class/CGI=3a=3aSession=3a=3aFileStore.md) がセッションデータのファイル名に与えるプレフィックス。
    (default: "")

- **`suffix`**:
    [CGI::Session::FileStore](../../../class/CGI=3a=3aSession=3a=3aFileStore.md) がセッションデータのファイル名に与えるサフィックス。
    (default: "")

- **`no_hidden`**:
  真を指定すると @output_hidden が nil になります。

- **`no_cookies`**:
  真を指定すると @output_cookies が nil になります。

  ```ruby title="例"
  CGI::Session.new(cgi, {"new_session" => true})
  ```
