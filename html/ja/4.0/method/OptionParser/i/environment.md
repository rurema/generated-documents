# OptionParser#environment

### def environment(env)    -> [String]

環境変数 env に対して
[Shellwords?.shellwords](../../../method/Shellwords/m/shellwords.md) を呼んで配列にしてから parse を行ないます。

- **param** `env` -- 環境変数名を文字列で与えます。

- **raise** `OptionParser::ParseError` -- パースに失敗した場合、発生します。
                                実際は OptionParser::ParseError のサブクラスになります。

```ruby title="例"
require "optparse"

config = {}
opts = OptionParser.new
opts.on("-r", "--require LIBRARY"){|lib| config[:lib] = lib }

# HOGE_OPT は hoge というプログラム名に対応した名前です
ENV['HOGE_OPT'] = %q{--require lib1 'remain data'}
p opts.environment('HOGE_OPT') # => ["remain data"]
p config                           # => {:lib=>"lib1"}
```
