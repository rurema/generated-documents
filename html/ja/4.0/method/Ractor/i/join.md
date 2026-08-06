# Ractor#join

### def join -> Ractor

self が終了するまで待ちます。
Ractor の実行が例外で終了した場合には、 [Ractor#value](../../../method/Ractor/i/value.md)を呼び出し、その例外を再発生させます。
