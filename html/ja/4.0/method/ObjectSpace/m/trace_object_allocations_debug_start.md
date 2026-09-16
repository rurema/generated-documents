# ObjectSpace?.trace_object_allocations_debug_start

### module_function def trace_object_allocations_debug_start -> nil
{: since="2.1.0"}

GC のデバッグ用に、オブジェクト割り当てのトレースを開始します。挙動は [ObjectSpace?.trace_object_allocations_start](../../../method/ObjectSpace/m/trace_object_allocations_start.md) を呼び出すのと同じですが、あわせて内部的なレポーターを登録します。アプリケーションで "... is T_NONE" のような BUG に遭遇した場合、アプリケーションの先頭で本メソッドを呼んでおくと調査の助けになります。

- **SEE** [ObjectSpace?.trace_object_allocations_start](../../../method/ObjectSpace/m/trace_object_allocations_start.md), [ObjectSpace?.trace_object_allocations_stop](../../../method/ObjectSpace/m/trace_object_allocations_stop.md)
