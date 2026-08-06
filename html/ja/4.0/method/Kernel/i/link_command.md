# Kernel#link_command

### def link_command(ldflags, opt = "", libpath = $DEFLIBPATH|$LIBPATH) -> String

実際にリンクする際に使用するコマンドを返します。

- **param** `ldflags` -- LDFLAGS に追加する値を指定します。

- **param** `opt` -- LIBS に追加する値を指定します。

- **param** `libpath` -- LIBPATH に指定する値を指定します。

- **SEE** [RbConfig.expand](../../../method/RbConfig/s/expand.md)
