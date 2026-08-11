# IO.copy_stream

### def IO.copy_stream(src, dst, copy_length = nil)             -> Integer
### def IO.copy_stream(src, dst, copy_length, src_offset) -> Integer

指定された src から dst へコピーします。
コピーしたバイト数を返します。

コピー元の src が IO オブジェクトの場合は、src のオフセットからファイル名の場合はファイルの最初からコピーを開始します。
コピー先の dst に関しても同様です。

dst にファイル名を指定し、そのファイルが存在しない場合、ファイルは作成されます。ファイルが存在する場合は長さ 0 に切り詰められます。

src が IO オブジェクトでかつ src_offset が指定されている場合、
src のオフセット(src.pos)は変更されません。

- **param** `src` -- コピー元となる IO オブジェクトかファイル名を指定します。
                   IO オブジェクトやファイル名に限らず、readpartial または
                   read に応答するオブジェクトも指定できます。

- **param** `dst` -- コピー先となる IO オブジェクトかファイル名を指定します。
                   IO オブジェクトやファイル名に限らず、write に応答するオブジェクトも指定できます。

- **param** `copy_length` -- コピーする長さをバイト単位で指定します。最大 copy_length までコピーされます。
                   nil を指定した場合、コピーする長さに制限はありません。

- **param** `src_offset` --  コピーを始めるオフセットを数値で指定します。

```ruby title="例"
IO.write("filetest", "abcdefghij")
p IO.copy_stream("filetest", "filecopy", 2)   # => 2
p IO.read("filecopy")                         # => "ab"
p IO.copy_stream("filetest", "filecopy", 3, 4)  # => 3
p IO.read("filecopy")                         # => "efg"
```

```ruby title="例: readpartial/read や write に応答するオブジェクトを指定する"
require "stringio"
src = StringIO.new("hello world")
dst = StringIO.new
p IO.copy_stream(src, dst)   # => 11
p dst.string                 # => "hello world"
```
