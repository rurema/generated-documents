# class IO::EINPROGRESSWaitReadable < Errno::EINPROGRESS

ノンブロッキングな I/O 処理が読み込み待ちの状態で `EINPROGRESS` を検出したときに発生する例外です。

[Errno::EINPROGRESS](../class/Errno=3a=3aEINPROGRESS.md) のサブクラスであり [IO::WaitReadable](../class/IO=3a=3aWaitReadable.md) を include
しているため、`rescue IO::WaitReadable` と `rescue Errno::EINPROGRESS` のどちらでも捕捉できます。同様の例外を発生させるたびに [Object#extend](../method/Object/i/extend.md)
するのではなく、あらかじめ [IO::WaitReadable](../class/IO=3a=3aWaitReadable.md) を include したこの専用クラスのインスタンスを生成することで実現されています。

- **SEE** [IO::WaitReadable](../class/IO=3a=3aWaitReadable.md), [IO::EINPROGRESSWaitWritable](../class/IO=3a=3aEINPROGRESSWaitWritable.md)
