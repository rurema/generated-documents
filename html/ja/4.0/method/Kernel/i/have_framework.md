# Kernel#have_framework

### def have_framework(framework) -> bool
### def have_framework(framework){ ... } -> bool

フレームワーク framework がシステムに存在するかどうか検査します。

フレームワーク framework がシステムに存在する場合は、グローバル変数
[m:$defs] に "-DHAVE_FRAMEWORK_framework" を追加し、真を返します。また、グローバル変数 [m:$LDFLAGS] に "-framework #{framework}" を追加します。 フレームワーク framework がシステムに存在しない場合は、偽を返します。

例えば、

```ruby
require 'mkmf'
p have_framework('Ruby') # => true
```

である場合、HAVE_FRAMEWORK_RUBY というプリプロセッサマクロをコンパイラに渡します。

- **param** `framework` -- フレームワークの名前を指定します。
