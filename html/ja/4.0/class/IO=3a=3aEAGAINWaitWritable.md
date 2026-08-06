# class IO::EAGAINWaitWritable < Errno::EAGAIN

[IO#write_nonblock](../method/IO/i/write_nonblock.md) などのノンブロッキング I/O が書き込み待ちの状態で
`EAGAIN` を検出したときに発生する例外です。

[Errno::EAGAIN](../class/Errno=3a=3aEAGAIN.md) のサブクラスであり [IO::WaitWritable](../class/IO=3a=3aWaitWritable.md) を include しているため、`rescue IO::WaitWritable` と `rescue Errno::EAGAIN` のどちらでも捕捉できます。同様の例外を発生させるたびに [Object#extend](../method/Object/i/extend.md) するのではなく、あらかじめ [IO::WaitWritable](../class/IO=3a=3aWaitWritable.md) を include したこの専用クラスのインスタンスを生成することで実現されています。

- **SEE** [IO::WaitWritable](../class/IO=3a=3aWaitWritable.md), [IO#write_nonblock](../method/IO/i/write_nonblock.md)
