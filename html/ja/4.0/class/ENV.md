# object ENV

環境変数を表すオブジェクト。[Hash](../class/Hash.md) と同様のインターフェースを持ちます。ただし、Hash と異なり、ENV のキーと値には文字列しかとることができません。

また、ENV で得られる文字列は [Object#freeze](../method/Object/i/freeze.md) されています。

```ruby title="例"
p ENV['TERM'].frozen?  # => true
```

Windows では環境変数は大文字、小文字を区別しません。(cygwin を除く)

```ruby title="例"
p ENV['OS'] # => Windows_NT
p ENV['os'] # => Windows_NT
```

## Class Methods

- [\[\]](../method/ENV/s/=5b=5d.md)
- [\[\]=](../method/ENV/s/=5b=5d=3d.md)
- [store](../method/ENV/s/store.md)
- [assoc](../method/ENV/s/assoc.md)
- [clear](../method/ENV/s/clear.md)
- [clone](../method/ENV/s/clone.md)
- [delete](../method/ENV/s/delete.md)
- [delete_if](../method/ENV/s/delete_if.md)
- [reject!](../method/ENV/s/reject=21.md)
- [dup](../method/ENV/s/dup.md)
- [each](../method/ENV/s/each.md)
- [each_pair](../method/ENV/s/each_pair.md)
- [each_key](../method/ENV/s/each_key.md)
- [each_value](../method/ENV/s/each_value.md)
- [empty?](../method/ENV/s/empty=3f.md)
- [except](../method/ENV/s/except.md)
- [fetch](../method/ENV/s/fetch.md)
- [filter](../method/ENV/s/filter.md)
- [select](../method/ENV/s/select.md)
- [filter!](../method/ENV/s/filter=21.md)
- [keep_if](../method/ENV/s/keep_if.md)
- [select!](../method/ENV/s/select=21.md)
- [freeze](../method/ENV/s/freeze.md)
- [has_key?](../method/ENV/s/has_key=3f.md)
- [include?](../method/ENV/s/include=3f.md)
- [key?](../method/ENV/s/key=3f.md)
- [member?](../method/ENV/s/member=3f.md)
- [has_value?](../method/ENV/s/has_value=3f.md)
- [value?](../method/ENV/s/value=3f.md)
- [inspect](../method/ENV/s/inspect.md)
- [invert](../method/ENV/s/invert.md)
- [key](../method/ENV/s/key.md)
- [keys](../method/ENV/s/keys.md)
- [length](../method/ENV/s/length.md)
- [size](../method/ENV/s/size.md)
- [merge!](../method/ENV/s/merge=21.md)
- [update](../method/ENV/s/update.md)
- [rassoc](../method/ENV/s/rassoc.md)
- [rehash](../method/ENV/s/rehash.md)
- [reject](../method/ENV/s/reject.md)
- [replace](../method/ENV/s/replace.md)
- [shift](../method/ENV/s/shift.md)
- [slice](../method/ENV/s/slice.md)
- [to_a](../method/ENV/s/to_a.md)
- [to_h](../method/ENV/s/to_h.md)
- [to_hash](../method/ENV/s/to_hash.md)
- [to_s](../method/ENV/s/to_s.md)
- [values](../method/ENV/s/values.md)
- [values_at](../method/ENV/s/values_at.md)
