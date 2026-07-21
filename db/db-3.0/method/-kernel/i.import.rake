names=import
visibility=private
kind=added
source_location=manual/api/rake/Kernel.md
since_by_name=import=1.9.3
until_by_name=

### def import(*filenames)

分割された Rakefile をインポートします。

インポートされたファイルは、現在のファイルが完全にロードされた後でロードされます。
このメソッドはインポートするファイルのどこで呼び出されてもかまいません。
また、インポートされるファイル内に現れるオブジェクトはインポートするファイル内で定義
されているオブジェクトに依存していてもかまいません。

このメソッドは依存関係を定義したファイルを読み込むのによく使われます。

- **param** `filenames` -- インポートする Rakefile を指定します。

```ruby title="例"
import ".depend", "my_rules"
```


