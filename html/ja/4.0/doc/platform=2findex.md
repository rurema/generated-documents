# Ruby が動作するプラットフォーム

Ruby は様々な環境で動作するよう各方面の有志によって移植されています。
以下、Ruby の動作環境について OS や開発環境で大別して説明します。
プラットフォームごとの保守担当者 (platform maintainer) の一覧は Ruby のソースツリーの `doc/maintainers.md` にあります。mswin64、mingw32 (MinGW)、AIX、FreeBSD、Solaris、RHEL/CentOS、macOS、OpenBSD、WebAssembly/WASI には担当者がいて、Cygwin にはいません。

インストールやコンパイルに関しては、「Rubyのインストール」(<https://www.ruby-lang.org/ja/documentation/installation/>)を参照。

  - [platform/Unix](../doc/platform=2fUnix.md)
  - [platform/Win32](../doc/platform=2fWin32.md)
    - [platform/Win32-native](../doc/platform=2fWin32=2dnative.md)
      - [platform/mswin32](../doc/platform=2fmswin32.md)
      - [platform/MinGW](../doc/platform=2fMinGW.md), [platform/mingw32](../doc/platform=2fmingw32.md)
    - [platform/Cygwin](../doc/platform=2fCygwin.md)
  - [platform/MacOSX](../doc/platform=2fMacOSX.md)
  - [platform/GNU](../doc/platform=2fGNU.md), [platform/GNUHurd](../doc/platform=2fGNUHurd.md)

## WebAssembly/WASI

Ruby 3.2 で WebAssembly/WASI がサポート対象のプラットフォームに加わりました。詳細は Ruby のソースツリーの `wasm/README.md` と ruby.wasm (<https://github.com/ruby/ruby.wasm>) を参照してください。[feature:18462]


## サポートを削除したプラットフォーム

次の表は、Ruby の NEWS に記載されているサポート削除のうち、プラットフォームに関するものをまとめたものです。サポートの再開や、よく似たプラットフォームを扱うときの参考として載せています。
NEWS に記載されていない削除は含まれません。「サポートを削除した版」は、その版でサポートコードが削除されたことを表します。

| プラットフォーム | サポートを削除した版 | 備考 |
|---|---|---|
| djgpp | Ruby 1.9.1 | |
| bcc32 (Borland C++) | Ruby 1.9.1 | Ruby 2.3 の NEWS にも Borland-C の記載がある |
| human68k | Ruby 1.9.1 | |
| Mac OS 9 まで | Ruby 1.9.1 | |
| VMS | Ruby 1.9.1 | |
| Windows CE | Ruby 1.9.1 | |
| OS/2 | Ruby 2.3 | |
| BeOS | Ruby 2.3 | |
| Borland-C | Ruby 2.3 | bcc32 は Ruby 1.9.1 で削除 |
| FreeBSD 4 より前 | Ruby 2.4 | |
| NaCl (Native Client) | Ruby 2.5 | |
| IA64 | Ruby 2.7 | [feature:15894] |
| MSVC 14.0 より前 (Visual Studio 2015 より前) | Ruby 4.0 | |
