# WEBrick::AccessLog::REFERER_LOG_FORMAT

### const REFERER_LOG_FORMAT -> String

Apache のアクセスログで一般的に使われるリファラの形式を表す文字列です。

- **return** -- 以下の文字列を返します。
  ```text
    "%{Referer}i -> %U"
  ```
