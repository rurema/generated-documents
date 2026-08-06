# WEBrick::AccessLog::COMMON_LOG_FORMAT

### const COMMON_LOG_FORMAT -> String
### const CLF -> String

Apache のアクセスログで一般的に使われる形式を表す文字列です。

- **return** -- 以下の文字列を返します。
  ```text
    "%h %l %u %t \"%r\" %s %b"
  ```
