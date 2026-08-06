# ARGF.class#argv

### def argv -> Array
{: since="1.9.1"}

[Object::ARGV](../../../method/Object/c/ARGV.md) を返します。

ARGF が ARGV をどう扱うかについては [ARGF](../../../class/ARGF.md) を参照してください。

例:

```console
$ ruby argf.rb -v glark.txt

ARGF.argv   #=> ["-v", "glark.txt"]
```
