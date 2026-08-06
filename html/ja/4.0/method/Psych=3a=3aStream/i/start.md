# Psych::Stream#start

### def start(encoding = Psych::Nodes::Stream::UTF8) -> Psych::Stream
### def start(encoding = Psych::Nodes::Stream::UTF8){|em| ... } -> Psych::Stream

Ruby オブジェクトを YAML document に変換するための準備をします。

変換された document は [Psych::Stream.new](../../../method/Psych=3a=3aStream/s/new.md) で指定した出力先に出力されます。

finish を呼び出すことで出力が完了します(finish を呼び出さないと最後まで出力されない場合があります)。

ブロック付きで start を呼び出すと、変換準備を終えた Stream オブジェクト
(self) がブロックに渡され、ブロックが呼び出された後に finish を呼び出します。
これによって finish を確実に呼び出すことができます。

- **param** `encoding` -- 出力のエンコーディング
