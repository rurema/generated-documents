# ARGF.class#binmode

### def binmode -> self
{: since=""}

self をバイナリモードにします。一度バイナリモードになった後は非バイナリモードに戻る事はできません。

バイナリモード下では以下のように動作します。

- 改行の変換を停止する
- 文字エンコーディングの変換を停止する
- 内容を ASCII-8BIT として扱う

```ruby title="例"
# test1.png - 164B
# test2.png - 128B
# test1.png + test2.png = 292B

# $ ruby test.rb test1.png test2.png

ARGF.binmode
p ARGF.read.size  # => 292
```

```ruby title="例"
# test1.png - 164B
# test2.png - 128B
# test1.png + test2.png = 292B

# $ ruby test.rb test1.png test2.png

p ARGF.read.size  # => 290
```

- **SEE** [IO#binmode](../../../method/IO/i/binmode.md), [ARGF.class#binmode?](../../../method/ARGF=2eclass/i/binmode=3f.md)
