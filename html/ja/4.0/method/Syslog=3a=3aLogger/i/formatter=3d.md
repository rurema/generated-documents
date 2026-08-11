# Syslog::Logger#formatter=

### def formatter=(formatter)

ログを出力する際に使用するフォーマッターをセットします。

- **param** `formatter` -- 4 つの引数 (severity, time, program name, message) を受け取る call メソッドを 持つオブジェクトを指定します。

引数 formatter が持つ call メソッドは以下の 4 つの引数 (severity,
time, program name, message) を受けとります。

- **`severity`**:

  このメッセージのログレベル([Logger::Severity](../../../class/Logger=3a=3aSeverity.md) 参照)。

- **`time`**:

  このメッセージが記録された時刻を表す [Time](../../../class/Time.md) オブジェクト。

- **`progname`**:

  無視されます。互換性のために用意されています。

- **`message`**:

  記録するメッセージ。

call メソッドは文字列を返す必要があります。

- **SEE** [Syslog::Logger#formatter](../../../method/Syslog=3a=3aLogger/i/formatter.md)
