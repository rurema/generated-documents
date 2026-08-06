# module Reline

GNU Readline 互換の行編集機能を提供するモジュールです。

[Reline.readline](../method/Reline/s/readline.md) でユーザからの一行入力を、[Reline.readmultiline](../method/Reline/s/readmultiline.md)
で複数行の入力を取得できます。入力時には行内編集が可能で、vi モードと
Emacs モードが用意されています。デフォルトは Emacs モードです。

入力した内容は入力履歴(ヒストリ)として記録できます。履歴には定数
[Reline::HISTORY](../class/Reline=3a=3aHISTORY.md)([Array](../class/Array.md) のサブクラスのインスタンス)でアクセスできます。

挙動のカスタマイズは Reline モジュールのアトリビュートへの代入で行います。主なものは以下の通りです。

- [Reline.completion_proc=](../method/Reline/s/completion_proc=3d.md) -- 補完候補を計算する Proc を設定します。
- [Reline.autocompletion=](../method/Reline/s/autocompletion=3d.md) -- 入力中の自動補完表示を有効にします。
- [Reline.prompt_proc=](../method/Reline/s/prompt_proc=3d.md) -- 行ごとにプロンプトを動的に差し替える Proc を設定します。
- [Reline.output_modifier_proc=](../method/Reline/s/output_modifier_proc=3d.md) -- 表示前に入力内容を加工(シンタックスハイライトなど)する Proc を設定します。
- [Reline.auto_indent_proc=](../method/Reline/s/auto_indent_proc=3d.md) -- 自動インデントの幅を計算する Proc を設定します。
- [Reline.input=](../method/Reline/s/input=3d.md) / [Reline.output=](../method/Reline/s/output=3d.md) -- 入出力先を差し替えます。デフォルトは標準入力/標準出力です。

キーバインドや変数は、GNU Readline と同様に inputrc ファイルで設定できます。inputrc は環境変数 `INPUTRC`、`~/.inputrc`、XDG
設定ディレクトリの `readline/inputrc` から探索されます。inputrc 内では
`$if Ruby`(または `$if Reline`)の条件ブロックも利用できます。

また、[Reline::Face](../class/Reline=3a=3aFace.md) で補完ダイアログなどの表示スタイルをカスタマイズできます(reline 0.4.0 以降)。

## Class Methods

- [auto_indent_proc](../method/Reline/s/auto_indent_proc.md)
- [auto_indent_proc=](../method/Reline/s/auto_indent_proc=3d.md)
- [autocompletion](../method/Reline/s/autocompletion.md)
- [autocompletion=](../method/Reline/s/autocompletion=3d.md)
- [basic_quote_characters](../method/Reline/s/basic_quote_characters.md)
- [basic_quote_characters=](../method/Reline/s/basic_quote_characters=3d.md)
- [basic_word_break_characters](../method/Reline/s/basic_word_break_characters.md)
- [basic_word_break_characters=](../method/Reline/s/basic_word_break_characters=3d.md)
- [completer_quote_characters](../method/Reline/s/completer_quote_characters.md)
- [completer_quote_characters=](../method/Reline/s/completer_quote_characters=3d.md)
- [completer_word_break_characters](../method/Reline/s/completer_word_break_characters.md)
- [completer_word_break_characters=](../method/Reline/s/completer_word_break_characters=3d.md)
- [completion_append_character](../method/Reline/s/completion_append_character.md)
- [completion_append_character=](../method/Reline/s/completion_append_character=3d.md)
- [completion_case_fold](../method/Reline/s/completion_case_fold.md)
- [completion_case_fold=](../method/Reline/s/completion_case_fold=3d.md)
- [completion_proc](../method/Reline/s/completion_proc.md)
- [completion_proc=](../method/Reline/s/completion_proc=3d.md)
- [completion_quote_character](../method/Reline/s/completion_quote_character.md)
- [dig_perfect_match_proc](../method/Reline/s/dig_perfect_match_proc.md)
- [dig_perfect_match_proc=](../method/Reline/s/dig_perfect_match_proc=3d.md)
- [emacs_editing_mode](../method/Reline/s/emacs_editing_mode.md)
- [emacs_editing_mode?](../method/Reline/s/emacs_editing_mode=3f.md)
- [filename_quote_characters](../method/Reline/s/filename_quote_characters.md)
- [filename_quote_characters=](../method/Reline/s/filename_quote_characters=3d.md)
- [get_screen_size](../method/Reline/s/get_screen_size.md)
- [input=](../method/Reline/s/input=3d.md)
- [output=](../method/Reline/s/output=3d.md)
- [output_modifier_proc](../method/Reline/s/output_modifier_proc.md)
- [output_modifier_proc=](../method/Reline/s/output_modifier_proc=3d.md)
- [pre_input_hook](../method/Reline/s/pre_input_hook.md)
- [pre_input_hook=](../method/Reline/s/pre_input_hook=3d.md)
- [prompt_proc](../method/Reline/s/prompt_proc.md)
- [prompt_proc=](../method/Reline/s/prompt_proc=3d.md)
- [readline](../method/Reline/s/readline.md)
- [readmultiline](../method/Reline/s/readmultiline.md)
- [special_prefixes](../method/Reline/s/special_prefixes.md)
- [special_prefixes=](../method/Reline/s/special_prefixes=3d.md)
- [vi_editing_mode](../method/Reline/s/vi_editing_mode.md)
- [vi_editing_mode?](../method/Reline/s/vi_editing_mode=3f.md)
