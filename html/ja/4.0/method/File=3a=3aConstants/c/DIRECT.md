# File::Constants::DIRECT

### const DIRECT -> Integer

このファイルに対する I/O のキャッシュの効果を最小化しようとする。 

このフラグを使うと、一般的に性能が低下する。 しかしアプリケーションが独自にキャッシングを行っているような 特別な場合には役に立つ。 ファイルの I/O
はユーザー空間バッファに対して直接行われる。 [File::Constants::DIRECT](../../../method/File=3a=3aConstants/c/DIRECT.md) フラグ自身はデータを同期で転送しようとはするが、 [File::Constants::SYNC](../../../method/File=3a=3aConstants/c/SYNC.md) のようにデータと必要なメタデータの転送が保証されるわけではない。 同期 I/O を保証するためには、
[File::Constants::DIRECT](../../../method/File=3a=3aConstants/c/DIRECT.md) に加えて [File::Constants::SYNC](../../../method/File=3a=3aConstants/c/SYNC.md) を使用しなければならない。

[File.open](../../../method/File/s/open.md)で使用します。
