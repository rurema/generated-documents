# Win32ネイティブ版Rubyの互換性問題

[platform/Win32-native](../doc/platform=2fWin32=2dnative.md)Rubyは、できる限りUnix版と同等の動作をするように意図して作られていますが、
OS自体の制限などにより、いくつかの非互換性があります。また、実装上の制限・バグもいくつか残っているようです。

注意: このドキュメントは現状では不充分です。気づいたことのあるひとはどんどん書き足してください。

## プロセスの扱い

最も重要な違いとして、fork が動作しないことがあげられます。[Process.fork](../method/Process/s/fork.md) は [NotImplementedError](../class/NotImplementedError.md) を発生させます。Unix向けに書かれているデーモン系のアプリケーションが動かないのはこれが原因であることが多いでしょう。

## 実行権限の扱い

setuid などのプロセスの実行権限を変更するメソッドは、Windows に対応する機能が無いため [NotImplementedError](../class/NotImplementedError.md) を発生させます。

## ファイルシステムの問題

Win32のファイルストリームにはテキストモードとバイナリモードの区別が存在します。
何も考えずに "w" などのモードでファイルに出力すると、`\n` → `\r\n` 変換が起きるために、バイナリデータが破壊されるという問題が起きます。バイナリデータを扱うときは `"wb"` のようにバイナリモードで開くか、[IO#binmode](../method/IO/i/binmode.md) を呼んでください。

[File.chmod](../method/File/s/chmod.md) は読み出し許可・書き込み許可属性のみ操作できます。group/other に対する操作や実行許可の操作は無視されます。[File.chown](../method/File/s/chown.md) や [File.lchown](../method/File/s/lchown.md) はエラーを返しませんが実際には何も行いません。

ドライブレターの扱いについては [platform/DOSISH-support](../doc/platform=2fDOSISH=2dsupport.md) (歴史的資料)も参照してください。


## シェルの違いによる問題

Win32 ネイティブ版では、[Kernel?.system](../method/Kernel/m/system.md) などでシェル経由で外部コマンドを起動するときのシェルは `cmd.exe` です。シェルの文法や組み込みコマンドは Unix のシェルとは異なります。
