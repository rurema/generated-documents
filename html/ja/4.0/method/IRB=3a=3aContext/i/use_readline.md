# IRB::Context#use_readline

### def use_readline  -> bool | nil
### def use_readline? -> bool | nil

[readline](../../../library/readline.md) を使うかどうかを返します。

- **return** -- 戻り値よって以下のように動作します。

- **`true`**:
    readline ライブラリを使う
- **`false`**:
    readline ライブラリを使わない
- **`nil`**:
    inf-ruby-mode 以外で readline ライブラリを利用しようとする (デフォルト)

動作を変更するためには .irbrc ファイル中で IRB.conf[:USE_READLINE] の設定や irb 起動時に --readline オプション、--noreadline オプションの指定を行います。
