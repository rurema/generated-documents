# Logger::Formatter::Format

### const Format -> String

フォーマット文字列。

[Logger::Formatter#call](../../../method/Logger=3a=3aFormatter/i/call.md) はこのフォーマット文字列に対して、ログレベルの頭文字・日時・
[Process?.pid](../../../method/Process/m/pid.md)・ログレベル・プログラム名・メッセージの順に値を当てはめます。
プロセス ID ([Process?.pid](../../../method/Process/m/pid.md)) が含まれる点に注意してください。
