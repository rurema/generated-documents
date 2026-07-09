names=import
visibility=private
kind=added
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.ryNQ5k/src/refm/api/src/rake/core_ext

--- import(*filenames)

分割された Rakefile をインポートします。

インポートされたファイルは、現在のファイルが完全にロードされた後でロードされます。
このメソッドはインポートするファイルのどこで呼び出されてもかまいません。
また、インポートされるファイル内に現れるオブジェクトはインポートするファイル内で定義
されているオブジェクトに依存していてもかまいません。

このメソッドは依存関係を定義したファイルを読み込むのによく使われます。

@param filenames インポートする Rakefile を指定します。

例:
   import ".depend", "my_rules"


