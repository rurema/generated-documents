# Win32

32 ビットアーキテクチャ上で動作する
Windows 95/98/Me/NT/2000/XP などを総称して Win32 システムと呼びます。

なお現在は Win64 システム (x64 と IA64) も存在します。

Win32 用の Ruby は大きく分けると

  - [platform/Cygwin](../doc/platform=2fCygwin.md) 版
  - [platform/Win32-native](../doc/platform=2fWin32=2dnative.md) Ruby

の二種類があります。

このマニュアルの本文で断りなく Win32 版と言うときは
Win32 ネイティブ版を指すものとします。
Cygwin はそもそも Unix 互換レイヤを目指して開発されているので、基本的に Unix の流儀のほうが通用します。
経験的にも、Cygwin 版は Win32 ネイティブ版よりも Unix 版に近い挙動を示します。
