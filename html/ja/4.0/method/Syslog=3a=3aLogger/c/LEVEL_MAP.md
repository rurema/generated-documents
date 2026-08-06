# Syslog::Logger::LEVEL_MAP

### const LEVEL_MAP -> {Integer => Integer}

[Logger](../../../class/Logger.md) のログレベルと [man:syslog(3)] のログレベルのマッピングを表す [Hash](../../../class/Hash.md) オブジェクトです。

[Syslog::Logger](../../../class/Syslog=3a=3aLogger.md) では、Ruby アプリケーションからのメッセージはシステム上の他のデーモンからの [man:syslog(3)] に記録されるメッセージと比べて、ログレベルを 1 つ下げて記録されます
([Logger::Severity::DEBUG](../../../method/Logger=3a=3aSeverity/c/DEBUG.md) と [Logger::Severity::INFO](../../../method/Logger=3a=3aSeverity/c/INFO.md) は除く)。
例えば、[Logger::Severity::FATAL](../../../method/Logger=3a=3aSeverity/c/FATAL.md) として記録した場合、
[Syslog::Level::LOG_ERR](../../../method/Syslog=3a=3aLevel/c/LOG_ERR.md) として処理されます。
