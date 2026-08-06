# Gem::Installer#ensure_dependency

### def ensure_dependency(spec, dependency) -> true

インストールしようとしている Gem が依存関係を満たしている事を確認します。

依存関係を満たしていない場合は、例外 [Gem::InstallError](../../../class/Gem=3a=3aInstallError.md) が発生します。

- **param** `spec` -- [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) のインスタンスを指定します。

- **param** `dependency` -- [Gem::Dependency](../../../class/Gem=3a=3aDependency.md) のインスタンスを指定します。

- **raise** `Gem::InstallError` -- 依存関係を満たしていない場合に発生します。
