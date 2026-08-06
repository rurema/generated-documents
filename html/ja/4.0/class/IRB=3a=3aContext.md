# class IRB::Context < Object

irb の設定を扱うためのクラスです。

irb 中で conf コマンドの戻り値や .irbrc で IRB.conf を操作する事で設定を変更します。irb の起動後は IRB.conf の内容を更新しても変更の内容は反映されない事に注意してください。

なお、.irbrc 中に記述できる以下の設定値については、[IRB::Context](../class/IRB=3a=3aContext.md)
オブジェクトのメソッドとして操作できません。

- **`IRB.conf[:AT_EXIT]`**:

  irb の終了時(サブ irb を含みません)に本項目に設定された [Proc](../class/Proc.md) オ
  ブジェクトを実行します。ブロック引数には何も渡されません。

  デフォルト値は [] です。

- **`IRB.conf[:CONTEXT_MODE]`**:

  新しいワークスペースを作成した時(サブ irb の起動や pushws した時)に、
  ワークスペースに関連する [Binding](../class/Binding.md) オブジェクトの作成方法を
  [Integer](../class/Integer.md) で設定します。

  0 を指定した場合、[Object::TOPLEVEL_BINDING](../method/Object/c/TOPLEVEL_BINDING.md) の [Proc](../class/Proc.md) 内の
  [Binding](../class/Binding.md) を使用します。1 を指定した場合、[Tempfile](../class/Tempfile.md) 中の
  [Binding](../class/Binding.md) を使用します。2 を指定した場合、[Thread](../class/Thread.md) 内で読み込
  んだファイル中の [Binding](../class/Binding.md) を使用します。3 を指定した場合、
  [Object::TOPLEVEL_BINDING](../method/Object/c/TOPLEVEL_BINDING.md) の関数中の [Binding](../class/Binding.md) を使用します。

  ただし、IRB.conf[:SINGLE_IRB] に true を設定していた場合は、現在のワー
  クスペースをそのまま使用します。

  デフォルト値は 3 です。

- **`IRB.conf[:IRB_LIB_PATH]`**:

  ライブラリ内部で使用します。

- **`IRB.conf[:IRB_RC]`**:

  irb の起動時(サブ irb を含みます)に本項目に設定された [Proc](../class/Proc.md) オブ
  ジェクトを実行します。ブロック引数には [IRB::Context](../class/IRB=3a=3aContext.md) が渡されます。
  そのため、サブ irb の設定をまとめて実行するのに使用します。

  デフォルト値は nil です。

  [irb#configure_sub_irb](../library/irb.md#configure_sub_irb) も併せて参照してください。

- **`IRB.conf[:LC_MESSAGES]`**:

  ライブラリ内部で使用します。

- **`IRB.conf[:MAIN_CONTEXT]`**:

  ライブラリ内部で使用します。

- **`IRB.conf[:SCRIPT]`**:

  ファイル名を指定して irb を実行した場合のパスを文字列で返します。

  デフォルト値は nil です。

- **`IRB.conf[:SINGLE_IRB]`**:

  irb 中で self を実行して得られるオブジェクトをサブ irb と共有するかど
  うかを設定します。true を設定した場合に共有されます。

  デフォルト値は false です。

- **`IRB.conf[:VERSION]`**:

  [IRB.version](../method/IRB/s/version.md) を実行した時に返すバージョンを [String](../class/String.md) で指定
  します。

  デフォルト値は nil です。


- **`IRB.conf[:__MAIN__]`**:

  ライブラリ内部で使用します。

## Class Methods

- [new](../method/IRB=3a=3aContext/s/new.md)

## Instance Methods

- [__inspect__](../method/IRB=3a=3aContext/i/__inspect__.md)
- [__to_s__](../method/IRB=3a=3aContext/i/__to_s__.md)
- [ap_name](../method/IRB=3a=3aContext/i/ap_name.md)
- [ap_name=](../method/IRB=3a=3aContext/i/ap_name=3d.md)
- [auto_indent_mode](../method/IRB=3a=3aContext/i/auto_indent_mode.md)
- [auto_indent_mode=](../method/IRB=3a=3aContext/i/auto_indent_mode=3d.md)
- [back_trace_limit](../method/IRB=3a=3aContext/i/back_trace_limit.md)
- [back_trace_limit=](../method/IRB=3a=3aContext/i/back_trace_limit=3d.md)
- [debug?](../method/IRB=3a=3aContext/i/debug=3f.md)
- [debug_level](../method/IRB=3a=3aContext/i/debug_level.md)
- [debug_level=](../method/IRB=3a=3aContext/i/debug_level=3d.md)
- [echo](../method/IRB=3a=3aContext/i/echo.md)
- [echo?](../method/IRB=3a=3aContext/i/echo=3f.md)
- [echo=](../method/IRB=3a=3aContext/i/echo=3d.md)
- [eval_history](../method/IRB=3a=3aContext/i/eval_history.md)
- [eval_history=](../method/IRB=3a=3aContext/i/eval_history=3d.md)
- [evaluate](../method/IRB=3a=3aContext/i/evaluate.md)
- [exit](../method/IRB=3a=3aContext/i/exit.md)
- [file_input?](../method/IRB=3a=3aContext/i/file_input=3f.md)
- [ignore_eof](../method/IRB=3a=3aContext/i/ignore_eof.md)
- [ignore_eof?](../method/IRB=3a=3aContext/i/ignore_eof=3f.md)
- [ignore_eof=](../method/IRB=3a=3aContext/i/ignore_eof=3d.md)
- [ignore_sigint](../method/IRB=3a=3aContext/i/ignore_sigint.md)
- [ignore_sigint?](../method/IRB=3a=3aContext/i/ignore_sigint=3f.md)
- [ignore_sigint=](../method/IRB=3a=3aContext/i/ignore_sigint=3d.md)
- [inspect](../method/IRB=3a=3aContext/i/inspect.md)
- [to_s](../method/IRB=3a=3aContext/i/to_s.md)
- [inspect?](../method/IRB=3a=3aContext/i/inspect=3f.md)
- [inspect_mode](../method/IRB=3a=3aContext/i/inspect_mode.md)
- [inspect_mode=](../method/IRB=3a=3aContext/i/inspect_mode=3d.md)
- [io](../method/IRB=3a=3aContext/i/io.md)
- [io=](../method/IRB=3a=3aContext/i/io=3d.md)
- [irb](../method/IRB=3a=3aContext/i/irb.md)
- [irb=](../method/IRB=3a=3aContext/i/irb=3d.md)
- [irb_name](../method/IRB=3a=3aContext/i/irb_name.md)
- [irb_name=](../method/IRB=3a=3aContext/i/irb_name=3d.md)
- [irb_path](../method/IRB=3a=3aContext/i/irb_path.md)
- [irb_path=](../method/IRB=3a=3aContext/i/irb_path=3d.md)
- [last_value](../method/IRB=3a=3aContext/i/last_value.md)
- [load_modules](../method/IRB=3a=3aContext/i/load_modules.md)
- [main](../method/IRB=3a=3aContext/i/main.md)
- [prompt_c](../method/IRB=3a=3aContext/i/prompt_c.md)
- [prompt_c=](../method/IRB=3a=3aContext/i/prompt_c=3d.md)
- [prompt_i](../method/IRB=3a=3aContext/i/prompt_i.md)
- [prompt_i=](../method/IRB=3a=3aContext/i/prompt_i=3d.md)
- [prompt_mode](../method/IRB=3a=3aContext/i/prompt_mode.md)
- [prompt_mode=](../method/IRB=3a=3aContext/i/prompt_mode=3d.md)
- [prompt_n](../method/IRB=3a=3aContext/i/prompt_n.md)
- [prompt_n=](../method/IRB=3a=3aContext/i/prompt_n=3d.md)
- [prompt_s](../method/IRB=3a=3aContext/i/prompt_s.md)
- [prompt_s=](../method/IRB=3a=3aContext/i/prompt_s=3d.md)
- [prompting?](../method/IRB=3a=3aContext/i/prompting=3f.md)
- [rc](../method/IRB=3a=3aContext/i/rc.md)
- [rc?](../method/IRB=3a=3aContext/i/rc=3f.md)
- [return_format](../method/IRB=3a=3aContext/i/return_format.md)
- [return_format=](../method/IRB=3a=3aContext/i/return_format=3d.md)
- [set_last_value](../method/IRB=3a=3aContext/i/set_last_value.md)
- [thread](../method/IRB=3a=3aContext/i/thread.md)
- [use_loader](../method/IRB=3a=3aContext/i/use_loader.md)
- [use_loader?](../method/IRB=3a=3aContext/i/use_loader=3f.md)
- [use_loader=](../method/IRB=3a=3aContext/i/use_loader=3d.md)
- [use_readline](../method/IRB=3a=3aContext/i/use_readline.md)
- [use_readline?](../method/IRB=3a=3aContext/i/use_readline=3f.md)
- [use_tracer](../method/IRB=3a=3aContext/i/use_tracer.md)
- [use_tracer?](../method/IRB=3a=3aContext/i/use_tracer=3f.md)
- [use_tracer=](../method/IRB=3a=3aContext/i/use_tracer=3d.md)
- [verbose](../method/IRB=3a=3aContext/i/verbose.md)
- [verbose=](../method/IRB=3a=3aContext/i/verbose=3d.md)
- [verbose?](../method/IRB=3a=3aContext/i/verbose=3f.md)
- [workspace](../method/IRB=3a=3aContext/i/workspace.md)
- [workspace=](../method/IRB=3a=3aContext/i/workspace=3d.md)

## Constants

- [IDNAME_IVARS](../method/IRB=3a=3aContext/c/IDNAME_IVARS.md)
- [NOPRINTING_IVARS](../method/IRB=3a=3aContext/c/NOPRINTING_IVARS.md)
- [NO_INSPECTING_IVARS](../method/IRB=3a=3aContext/c/NO_INSPECTING_IVARS.md)
