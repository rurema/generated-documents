# RDoc::Parser.alias_extension

### def RDoc::Parser.alias_extension(old_ext, new_ext) -> bool

old_ext に登録されたパーサを new_ext でも解析できるようにエイリアスを登録します。

- **param** `old_ext` -- 拡張子を文字列で指定します。

- **param** `new_ext` -- 拡張子を文字列で指定します。

- **return** -- エイリアスが登録された場合は true を返します。old_ext にパーサが登録されていない場合、エイリアスが登録されずに false を返します。
