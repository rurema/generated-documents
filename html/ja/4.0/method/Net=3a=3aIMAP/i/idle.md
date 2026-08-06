# Net::IMAP#idle

### def idle {|resp| ...} -> Net::IMAP::TaggedResponse

IDLE 命令を送り、メールボックスの非同期的変化を待ち受けます。

このメソッドに渡したブロックは
[Net::IMAP#add_response_handler](../../../method/Net=3a=3aIMAP/i/add_response_handler.md) によってレスポンスハンドラとして用いられます。
また、このメソッドが終了する時点で
[Net::IMAP#remove_response_handler](../../../method/Net=3a=3aIMAP/i/remove_response_handler.md) でハンドラが削除されます。

レスポンスハンドラについては
[Net::IMAP#add_response_handler](../../../method/Net=3a=3aIMAP/i/add_response_handler.md) を参照してください。

別のスレッドが [Net::IMAP#idle_done](../../../method/Net=3a=3aIMAP/i/idle_done.md) を呼びだすまでこのメソッドを呼びだしたスレッドは停止します。

この命令は [RFC:2177] で定義されています。詳しくはそちらを参照してください。
