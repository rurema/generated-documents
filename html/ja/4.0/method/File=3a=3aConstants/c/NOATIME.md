# File::Constants::NOATIME

### const NOATIME -> Integer

ファイル読み込み時に atime を更新しません。
open(2) で O_ATIME が指定できる場合に使えます。
[File.open](../../../method/File/s/open.md)で使用します。

atime が更新されないのは確実ではないということに注意してください。
これは性能のためのオプションです。
