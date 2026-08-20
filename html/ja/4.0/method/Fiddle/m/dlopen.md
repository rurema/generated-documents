# Fiddle?.dlopen

### module_function def dlopen(lib)                    -> Fiddle::Handle

ダイナミックライブラリ lib をロードし、
[Fiddle::Handle](../../../class/Fiddle=3a=3aHandle.md) として返します。

[`Fiddle::Handle.new(lib)`](../../../method/Fiddle=3a=3aHandle/s/new.md) と等価です。

- **param** `lib` -- ロードしたいライブラリを文字列で与えます。

- **raise** `Fiddle::DLError` -- [man:dlopen(3)] に失敗した時に発生します。
