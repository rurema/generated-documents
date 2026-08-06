# class IO::EAGAINWaitReadable < Errno::EAGAIN

[IO#read_nonblock](../method/IO/i/read_nonblock.md) などのノンブロッキング I/O が読み込み待ちの状態で
`EAGAIN` を検出したときに発生する例外です。

[Errno::EAGAIN](../class/Errno=3a=3aEAGAIN.md) のサブクラスであり [IO::WaitReadable](../class/IO=3a=3aWaitReadable.md) を include しているため、`rescue IO::WaitReadable` と `rescue Errno::EAGAIN` のどちらでも捕捉できます。同様の例外を発生させるたびに [Object#extend](../method/Object/i/extend.md) するのではなく、あらかじめ [IO::WaitReadable](../class/IO=3a=3aWaitReadable.md) を include したこの専用クラスのインスタンスを生成することで実現されています。

- **SEE** [IO::WaitReadable](../class/IO=3a=3aWaitReadable.md), [IO#read_nonblock](../method/IO/i/read_nonblock.md)
