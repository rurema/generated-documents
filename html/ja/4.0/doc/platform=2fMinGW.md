# MinGW

フリーソフトウェアだけで純粋な Win32 用実行ファイルを作るためのコンパイル環境のことで、MinGW は Minimalist GNU on Windows の略です。
詳細は <http://www.mingw.org/> を参照してください。

なお、この場合の「純粋な」は「msvcrt.dll を使ったアプリケーション」を指します。
MFC (Microsoft Foundation Classes) は使えません。

MinGW で作られた ruby は mingw32 版と呼ばれており、
[platform/mswin32](../doc/platform=2fmswin32.md) 版とほとんど同じように動作します。

→[platform/Win32-native](../doc/platform=2fWin32=2dnative.md)
