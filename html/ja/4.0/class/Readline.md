# module Readline

GNU Readline によるコマンドライン入力インタフェースを提供するモジュールです。

GNU Readline 互換ライブラリのひとつである Edit Line(libedit) もサポートしています。

  - <https://directory.fsf.org/wiki/Readline>
  - <https://thrysoee.dk/editline/>

Readline.readline を使用してユーザからの入力を取得できます。
このとき、 GNU Readline のように入力の補完や
Emacs のようなキー操作などができます。

例: プロンプト"> "を表示して、ユーザからの入力を取得する。

```ruby
require 'readline'
while buf = Readline.readline("> ", true)
  print("-> ", buf, "\n")
end
```

ユーザが入力した内容を履歴(以下、ヒストリ)として記録できます。
定数 [Readline::HISTORY](../class/Readline=3a=3aHISTORY.md) を使用して入力履歴にアクセスできます。
例えば、[Readline::HISTORY](../class/Readline=3a=3aHISTORY.md).to_a により、全ての入力した内容を文字列の配列として取得できます。

```ruby title="例: ヒストリを配列として取得する"
require 'readline'
while buf = Readline.readline("> ", true)
  p Readline::HISTORY.to_a
  print("-> ", buf, "\n")
end
```

## Class Methods

- [basic_quote_characters](../method/Readline/s/basic_quote_characters.md)
- [basic_quote_characters=](../method/Readline/s/basic_quote_characters=3d.md)
- [basic_word_break_characters](../method/Readline/s/basic_word_break_characters.md)
- [basic_word_break_characters=](../method/Readline/s/basic_word_break_characters=3d.md)
- [completer_quote_characters](../method/Readline/s/completer_quote_characters.md)
- [completer_quote_characters=](../method/Readline/s/completer_quote_characters=3d.md)
- [completer_word_break_characters](../method/Readline/s/completer_word_break_characters.md)
- [completer_word_break_characters=](../method/Readline/s/completer_word_break_characters=3d.md)
- [completion_append_character](../method/Readline/s/completion_append_character.md)
- [completion_append_character=](../method/Readline/s/completion_append_character=3d.md)
- [completion_case_fold](../method/Readline/s/completion_case_fold.md)
- [completion_case_fold=](../method/Readline/s/completion_case_fold=3d.md)
- [completion_proc](../method/Readline/s/completion_proc.md)
- [completion_proc=](../method/Readline/s/completion_proc=3d.md)
- [emacs_editing_mode](../method/Readline/s/emacs_editing_mode.md)
- [filename_quote_characters](../method/Readline/s/filename_quote_characters.md)
- [filename_quote_characters=](../method/Readline/s/filename_quote_characters=3d.md)
- [get_screen_size](../method/Readline/s/get_screen_size.md)
- [input=](../method/Readline/s/input=3d.md)
- [output=](../method/Readline/s/output=3d.md)
- [set_screen_size](../method/Readline/s/set_screen_size.md)
- [vi_editing_mode](../method/Readline/s/vi_editing_mode.md)

## Module Functions

- [readline](../method/Readline/m/readline.md)

## Constants

- [FILENAME_COMPLETION_PROC](../method/Readline/c/FILENAME_COMPLETION_PROC.md)
- [USERNAME_COMPLETION_PROC](../method/Readline/c/USERNAME_COMPLETION_PROC.md)
- [VERSION](../method/Readline/c/VERSION.md)
