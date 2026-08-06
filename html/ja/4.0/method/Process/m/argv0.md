# Process?.argv0

### module_function def argv0 -> String

現在実行中の Ruby スクリプトの名前を表す文字列です。[m:$0] を更新しても本メソッドの戻り値への影響はありません。

本メソッドは 2.1 以降でグローバル変数を用いないで現在実行中の Ruby スクリプトの名前を表す文字列を取得する手段として提供されました。

- **SEE** [Process?.setproctitle](../../../method/Process/m/setproctitle.md), [m:$0]
