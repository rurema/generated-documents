# PTY.open

### def PTY.open -> [IO, File]
### def PTY.open{|master_io, slave_file| ... } -> object

仮想 tty を確保し、マスター側に対応する [IO](../../../class/IO.md) オブジェクトとスレーブ側に対応する [File](../../../class/File.md) オブジェクトの配列を返します。

ブロック付きで呼び出された場合は、これらの要素はブロックパラメータとして渡され、ブロックから返された結果を返します。また、このマスター IO とスレーブ File は、ブロックを抜けるときにクローズ済みでなければクローズされます。
