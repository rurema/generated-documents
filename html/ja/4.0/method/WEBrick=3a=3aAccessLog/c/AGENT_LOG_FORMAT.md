# WEBrick::AccessLog::AGENT_LOG_FORMAT

### const AGENT_LOG_FORMAT -> String

Apache のアクセスログで一般的に使われる User-Agent の形式を表す文字列です。

- **return** -- 以下の文字列を返します。
  ```text
    "%{User-Agent}i"
  ```
