# Syslog::Logger#fatal

### def fatal(message = nil, &block) -> true

FATAL 情報を出力します。syslog の err の情報として記録されます。

ブロックを与えなかった場合は、message をメッセージとしてログを出力します。

ブロックを与えた場合は、ブロックを評価した結果をメッセージとして ログを出力します。

引数とブロックを同時に与えた場合は、message をメッセージとしてログを出力します(ブロックは評価されません)。

- **SEE** [Syslog::Logger::LEVEL_MAP](../../../method/Syslog=3a=3aLogger/c/LEVEL_MAP.md), [Logger#fatal](../../../method/Logger/i/fatal.md)
