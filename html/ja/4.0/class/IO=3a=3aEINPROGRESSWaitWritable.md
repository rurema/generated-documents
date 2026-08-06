# class IO::EINPROGRESSWaitWritable < Errno::EINPROGRESS

[Socket#connect_nonblock](../method/Socket/i/connect_nonblock.md) などのノンブロッキングな接続処理が完了を待っている状態で `EINPROGRESS` を検出したときに発生する例外です。

[Errno::EINPROGRESS](../class/Errno=3a=3aEINPROGRESS.md) のサブクラスであり [IO::WaitWritable](../class/IO=3a=3aWaitWritable.md) を include
しているため、`rescue IO::WaitWritable` と `rescue Errno::EINPROGRESS` のどちらでも捕捉できます。同様の例外を発生させるたびに [Object#extend](../method/Object/i/extend.md)
するのではなく、あらかじめ [IO::WaitWritable](../class/IO=3a=3aWaitWritable.md) を include したこの専用クラスのインスタンスを生成することで実現されています。

- **SEE** [IO::WaitWritable](../class/IO=3a=3aWaitWritable.md), [Socket#connect_nonblock](../method/Socket/i/connect_nonblock.md)
