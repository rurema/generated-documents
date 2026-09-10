# IO#check_winsize_changed

### def check_winsize_changed { ... } -> self

コンソールの入力イベントキューに溜まっているイベントを読み進め、ウィンドウサイズが
変更されたイベントが見つかるたびにブロックを評価します。ウィンドウサイズの変更以外の
イベントは読み捨てます。ブロックには常に nil が渡されます。

このメソッドは Windows でのみ使用できます。

- **raise** `NotImplementedError` -- Windows 以外の環境で発生します。
