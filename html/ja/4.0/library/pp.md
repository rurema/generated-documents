# library pp

オブジェクトなどを見やすく出力するためのライブラリです。

pp ライブラリは、ユーザがあたらしく定義したクラスに対しても見やすい表示をするように作られていますので、[Kernel?.pp](../method/Kernel/m/pp.md) を使う上で余計な作業をする必要はありません。

### どちらが読みやすいでしょうか?

```text title="pによるpretty-printされてない出力"
#<PP:0x81a0d10 @stack=[], @genspace=#<Proc:0x81a0cc0>, @nest=[0], @newline="\n",
 @buf=#<PrettyPrint::Group:0x81a0c98 @group=0, @tail=0, @buf=[#<PrettyPrint::Gro
up:0x81a0ba8 @group=1, @tail=0, @buf=[#<PrettyPrint::Text:0x81a0b30 @tail=2, @wi
dth=1, @text="[">, #<PrettyPrint::Group:0x81a0a68 @group=2, @tail=1, @buf=[#<Pre
ttyPrint::Text:0x81a09f0 @tail=1, @width=1, @text="1">], @singleline_width=1>, #
<PrettyPrint::Text:0x81a0a7c @tail=0, @width=1, @text=",">, #<PrettyPrint::Break
able:0x81a0a2c @group=2, @gensace=#<Proc:0x81a0cc0>, @newline="\n", @indent=1, @
tail=2, @sep=" ", @width=1>, #<PrettyPrint::Group:0x81a09c8 @group=2, @tail=1, @
buf=[#<PrettyPrint::Text:0x81a0950 @tail=1, @width=1, @text="2">], @singleline_w
idth=1>, #<PrettyPrint::Text:0x81a0af4 @tail=0, @width=1, @text="]">], @singleli
ne_width=6>], @singleline_width=6>, @sharing_detection=false>
```

```text title="ppによるpretty-print された出力"
#<PP:0x40d0688
 @buf=
  #<PrettyPrint::Group:0x40d064c
   @buf=
    [#<PrettyPrint::Group:0x40d05d4
      @buf=
       [#<PrettyPrint::Text:0x40d0598 @tail=2, @text="[", @width=1>,
        #<PrettyPrint::Group:0x40d0534
         @buf=[#<PrettyPrint::Text:0x40d04f8 @tail=1, @text="1", @width=1>],
         @group=2,
         @singleline_width=1,
         @tail=1>,
        #<PrettyPrint::Text:0x40d053e @tail=0, @text=",", @width=1>,
        #<PrettyPrint::Breakable:0x40d0516
         @genspace=#<Proc:0x40d0656>,
         @group=2,
         @indent=1,
         @newline="\n",
         @sep=" ",
         @tail=2,
         @width=1>,
        #<PrettyPrint::Group:0x40d04e4
         @buf=[#<PrettyPrint::Text:0x40d04a8 @tail=1, @text="2", @width=1>],
         @group=2,
         @singleline_width=1,
         @tail=1>,
        #<PrettyPrint::Text:0x40d057a @tail=0, @text="]", @width=1>],
      @group=1,
      @singleline_width=6,
      @tail=0>],
   @group=0,
   @singleline_width=6,
   @tail=0>,
 @genspace=#<Proc:0x40d0656>,
 @nest=[0],
 @newline="\n",
 @sharing_detection=false,
 @stack=[]>
```

### 出力のカスタマイズ

あるクラスの pp の出力をカスタマイズしたい場合は、そのクラスで pretty_print メソッドと pretty_print_cycle メソッドを再定義します。
このメソッドは [PP](../class/PP.md) オブジェクトを引数として pp 実行時に呼ばれます。
ユーザは表示したい内容を表すツリーを、引数として与えられた [PP](../class/PP.md) オブジェクトを使って以下のように作成します。

  - [PrettyPrint#group](../method/PrettyPrint/i/group.md) を使って子ノードをつくります。同時に子ノードのインデントの深さも決めます。
  - [PrettyPrint#breakable](../method/PrettyPrint/i/breakable.md) を使って改行しても良い場所を指定します。
  - [PP#pp](../method/PP/i/pp.md) を使って出力したいインスタンス変数などを出力します。
  - [PrettyPrint#text](../method/PrettyPrint/i/text.md) を使って、出力が見やすくなるように「,」などの修飾文字を適宜挿入します。

[PP](../class/PP.md) は [PrettyPrint](../class/PrettyPrint.md) のサブクラスですので、上で PrettyPrint のメソッドとされているものは
PP のメソッドでもあります。

以下は Hash の pretty printing のカスタマイズの例です。

```ruby
class Hash
  def pretty_print(q)
    q.group(2, "<hash>") do
      q.breakable
      first = true
      self.each{|k, v|
        unless first
          q.text(',')
          q.breakable
        end
        q.pp k
        q.text ' => '
        q.group(1) do
          q.breakable ''
          if v.is_a?(String) and v.size > 10
            q.pp(v[0..9] + '...')
          else
            q.pp v
          end
        end
        first = false
      }
    end
    q.breakable
    q.text "</hash>"
  end

  def pretty_print_cycle(q)
    q.text(empty? ? '{}' : '{...}')
  end
end

h = {:a => 'a'*5, :b => 'b'*10, :c => 'c'*20, :d => 'd'*30}
pp h

#=>
# <hash>
#   :d => "dddddddddd...",
#   :a => "aaaaa",
#   :b => "bbbbbbbbbb",
#   :c => "cccccccccc..."
# </hash>
```
