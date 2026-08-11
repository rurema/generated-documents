# Marshal?.dump

### module_function def dump(obj, port, limit = -1) -> IO
### module_function def dump(obj, limit = -1) -> String

obj を指定された出力先に再帰的に出力します。

ファイルに書き出せないオブジェクトをファイルに書き出そうとすると例外 [TypeError](../../../class/TypeError.md) が発生します。
ファイルに書き出せないオブジェクトは以下の通りです。

- 名前のついてない [Class](../../../class/Class.md)/[Module](../../../class/Module.md) オブジェクト。(この場
   合は、例外 [ArgumentError](../../../class/ArgumentError.md) が発生します。無名クラスについて
   は、[Module.new](../../../method/Module/s/new.md) を参照。)
- システムがオブジェクトの状態を保持するもの。具体的には以下のイン
   スタンス。[Dir](../../../class/Dir.md), [File::Stat](../../../class/File=3a=3aStat.md), [IO](../../../class/IO.md) とそのサブクラス
   [File](../../../class/File.md), [Socket](../../../class/Socket.md) など。
- [MatchData](../../../class/MatchData.md), [Method](../../../class/Method.md), [UnboundMethod](../../../class/UnboundMethod.md),
   [Proc](../../../class/Proc.md), [Thread](../../../class/Thread.md), [ThreadGroup](../../../class/ThreadGroup.md), [Continuation](../../../class/Continuation.md)
   のインスタンス。
- 特異メソッドを定義したオブジェクト

また、これらのオブジェクトを間接的に指すオブジェクトなども書き出せません。例えば、デフォルト値を求めるブロックを持った [Hash](../../../class/Hash.md) は
[Proc](../../../class/Proc.md) を間接的に指していることになります。

```ruby title="例"
p Marshal.dump(Hash.new {})
# => -:1:in 'dump': cannot dump hash with default proc (TypeError)
```

マーシャルの動作を任意に定義することもできます。

- **param** `obj` -- ダンプする対象のオブジェクトを指定します。

- **param** `port` -- [IO](../../../class/IO.md) かそのサブクラスのインスタンスを指定します。

- **param** `limit` -- 指定した場合、limit 段以上深くリンクしたオブジェクトをダンプできません。負の limit を指定すると深さチェックを行いません。
             デフォルトは -1 です。

- **return** -- port を省略すると、obj をダンプした [String](../../../class/String.md) を返します。
             port を指定すると port を返します。

- **raise** `TypeError` -- ファイルに書き出せないオブジェクトをファイルに書きだそうとした場合に発生します。

- **raise** `ArgumentError` -- 名前の付いていない [Class](../../../class/Class.md) や [Module](../../../class/Module.md)
                     オブジェクトをダンプしようとした場合に発生します。

- **raise** `ArgumentError` -- limit 段以上深くリンクしたオブジェクトをダンプしようとした場合に発生します。

- **SEE** [Object#marshal_dump](../../../method/Object/i/marshal_dump.md), [Object#marshal_load](../../../method/Object/i/marshal_load.md)
