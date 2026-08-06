# REXML::SAX2Listener#progress

### def progress(position) -> ()

パーサが入力を読み進めたときに呼び出されるコールバックメソッドです。

これの呼び出しの次のコールバックは基本的にこれで報告される位置から読み出したデータによるものです。

- **param** `position` -- パーサの入力位置のバイト数
