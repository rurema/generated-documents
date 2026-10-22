# ruby_script

### void ruby_script(const char *name)

現在のスクリプト名を `name` に設定します。
Ruby レベルで `$0 = name` とするのと似ていますが、インタプリタが保持するスクリプト名も変わります。

- **param** `name` -- 設定するファイル名です。
