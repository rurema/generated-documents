# Gem::Dependency#latest_version?

### def latest_version? -> bool
{: since="2.0.0"}

`self` が単に最新のバージョンを要求しているだけかどうかを返します。

[Gem::Dependency#requirement](../../../method/Gem=3a=3aDependency/i/requirement.md) が条件を持たない([Gem::Requirement#none?](../../../method/Gem=3a=3aRequirement/i/none=3f.md) が真である)場合に true を返します。
