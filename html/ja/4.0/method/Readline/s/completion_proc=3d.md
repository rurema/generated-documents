# Readline.completion_proc=

### def Readline.completion_proc=(proc)

ユーザからの入力を補完する時の候補を取得する [Proc](../../../class/Proc.md) オブジェクト
proc を指定します。
proc は、次のものを想定しています。
  1. callメソッドを持つ。callメソッドを持たない場合、例外 ArgumentError を発生します。
  2. 引数にユーザからの入力文字列を取る。
  3. 候補の文字列の配列を返す。

「/var/lib /v」の後で補完を行うと、デフォルトでは proc の引数に「/v」が渡されます。
このように、ユーザが入力した文字列を
[Readline.completer_word_break_characters](../../../method/Readline/s/completer_word_break_characters.md) に含まれる文字で区切ったものを単語とすると、カーソルがある単語の最初の文字から現在のカーソル位置までの文字列が proc の引数に渡されます。

- **param** `proc` -- ユーザからの入力を補完する時の候補を取得する [Proc](../../../class/Proc.md) オブジェクトを指定します。
            nil を指定した場合はデフォルトの動作になります。

例: foo、foobar、foobazを補完する。

```ruby
require 'readline'

WORDS = %w(foo foobar foobaz)

Readline.completion_proc = proc {|word|
    WORDS.grep(/\A#{Regexp.quote word}/)
}

while buf = Readline.readline("> ")
  print "-> ", buf, "\n"
end
```

- **SEE** [Readline.completion_proc](../../../method/Readline/s/completion_proc.md)
