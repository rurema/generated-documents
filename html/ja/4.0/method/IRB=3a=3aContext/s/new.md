# IRB::Context.new

### def IRB::Context.new(irb, workspace = nil, input_method = nil, output_method = nil) -> IRB::Context

自身を初期化します。

- **param** `irb` -- [IRB::Irb](../../../class/IRB=3a=3aIrb.md) オブジェクトを指定します。

- **param** `workspace` -- [IRB::WorkSpace](../../../class/IRB=3a=3aWorkSpace.md) オブジェクトを指定します。省略した場合は新しく作成されます。

- **param** `input_method` -- [String](../../../class/String.md)、[IRB::InputMethod](../../../class/IRB=3a=3aInputMethod.md) のサブクラスのオブジェクト、nil のいずれかを指定します。

- **param** `output_method` -- [IRB::OutputMethod](../../../class/IRB=3a=3aOutputMethod.md) のサブクラスのオブジェクトを指定します。省略した場合は
                     [IRB::StdioOutputMethod](../../../class/IRB=3a=3aStdioOutputMethod.md) オブジェクトが新しく作成されます。
