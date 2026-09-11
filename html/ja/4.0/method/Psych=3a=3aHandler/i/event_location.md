# Psych::Handler#event_location

### def event_location(start_line, start_column, end_line, end_column) -> ()

各イベントが呼び出される直前に、そのイベントの位置情報とともに呼び出されます。

start_line、start_column にはこれから呼び出されるイベントの開始位置の行番号・列番号が、
end_line、end_column には終了位置の行番号・列番号が渡されます。

必要に応じてこのメソッドを override してください。

- **param** `start_line` -- イベントの開始位置の行番号
- **param** `start_column` -- イベントの開始位置の列番号
- **param** `end_line` -- イベントの終了位置の行番号
- **param** `end_column` -- イベントの終了位置の列番号
