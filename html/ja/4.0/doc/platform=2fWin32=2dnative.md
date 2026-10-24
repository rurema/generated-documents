# Win32ネイティブ版

Win32 ネイティブ版 Ruby を [platform/Cygwin](../doc/platform=2fCygwin.md) 版と比較すると以下の利点があります。

  - Cygwin DLL が必要ない

欠点は以下の通りです。

  - Unix 版との互換性が低い

この点については [platform/mswin32-compat](../doc/platform=2fmswin32=2dcompat.md) も参照してください。

ネイティブビルドは、使うコンパイラと C ランタイムによって次の 3 種類に分かれます。

  - [platform/mswin32](../doc/platform=2fmswin32.md) 版: Visual C++ でビルドしたもの
  - [platform/MinGW](../doc/platform=2fMinGW.md) 版(mingw-msvcrt): MinGW で `msvcrt.dll` 系の C ランタイムを使うもの
  - [platform/MinGW](../doc/platform=2fMinGW.md) 版(mingw-ucrt): MinGW で Windows Universal CRT を使うもの

これらの版の間に大きな違いはなく、Ruby レベルで違いがわかることはまずありません。
ただし Ruby 1.6 まではそれぞれで DLL 名が違うため、拡張ライブラリは流用できませんでした。この点は Ruby 1.8 以降では改善されています。

Borland C++ (bcc32) のサポートは Ruby 1.9.1 で終了しました。

Ruby 4.0 から、MSVC でビルドするには MSVC 14.0 (Visual Studio 2015) 以降が必要です。


削除されたプラットフォームの一覧は [platform/index](../doc/platform=2findex.md) を参照してください。
