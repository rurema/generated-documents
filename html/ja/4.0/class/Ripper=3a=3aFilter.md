# class Ripper::Filter < Object

イベントドリブンスタイルで Ruby プログラムを加工するためのクラスです。

このクラスを継承して、必要なイベントに対応するメソッドを定義して使用します。

### 使用例

```ruby
require 'ripper'
require 'cgi'

class Ruby2HTML < Ripper::Filter
  def on_default(event, tok, f)
    f << CGI.escapeHTML(tok)
  end

  def on_comment(tok, f)
    f << %Q[<span class="comment">#{CGI.escapeHTML(tok)}</span>]
  end

  def on_tstring_beg(tok, f)
    f << %Q[<span class="string">#{CGI.escapeHTML(tok)}]
  end

  def on_tstring_end(tok, f)
    f << %Q[#{CGI.escapeHTML(tok)}</span>]
  end
end

Ruby2HTML.new(ARGF).parse('')
```

Ruby プログラムを解析して、[Ripper::SCANNER_EVENTS](../method/Ripper/c/SCANNER_EVENTS.md) にあるスキャナイベントを実行します。イベントはプログラムに書いた順番で実行されます。

上記の例では、parse メソッドに渡した空文字列を初期値として、イベントハンドラが ARGF で渡された Ruby プログラムを HTML にして返します。

## Class Methods

- [new](../method/Ripper=3a=3aFilter/s/new.md)

## Instance Methods

- [column](../method/Ripper=3a=3aFilter/i/column.md)
- [filename](../method/Ripper=3a=3aFilter/i/filename.md)
- [lineno](../method/Ripper=3a=3aFilter/i/lineno.md)
- [parse](../method/Ripper=3a=3aFilter/i/parse.md)

## Private Instance Methods

- [on_XXX](../method/Ripper=3a=3aFilter/i/on_XXX.md)
- [on_default](../method/Ripper=3a=3aFilter/i/on_default.md)
