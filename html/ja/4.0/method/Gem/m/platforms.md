# Gem?.platforms

### module_function def platforms -> [Gem::Platform]
{: since="1.9.2"}
### module_function def platforms=(platforms)
{: since="1.9.2"}

この RubyGems がサポートするプラットフォームの配列を返します。

明示的に設定していない場合は `[Gem::Platform::RUBY, Gem::Platform.local]` になります。`platforms=` は主にテストのために、この配列を明示的に設定するために使います。

- **param** `platforms` -- 設定する [Gem::Platform](../../../class/Gem=3a=3aPlatform.md) の配列です。
- **return** -- この RubyGems がサポートするプラットフォームの配列です。
- **SEE** [Gem::Platform.local](../../../method/Gem=3a=3aPlatform/s/local.md), [Gem::Platform](../../../class/Gem=3a=3aPlatform.md)
