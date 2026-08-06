# IRB::Context#use_loader=

### def use_loader=(opt)

load または require 時に irb のファイル読み込み機能(irb_load、
irb_require)を使うかどうかを設定します。

.irbrc ファイル中で IRB.conf[:USE_LOADER] を設定する事でも同様の事が行えます。


デフォルト値は false です。

- **SEE** [IRB::Context#use_loader?](../../../method/IRB=3a=3aContext/i/use_loader=3f.md)
