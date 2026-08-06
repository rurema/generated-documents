# PP#object_group

### def object_group(obj) { ... }    -> ()

以下と等価な働きをするもので簡便のために用意されています。

```text
group(1, '#<' + obj.class.name, '>') { ... }
```

- **param** `obj` -- 表示したいオブジェクトを指定します。

- **SEE** [PrettyPrint#group](../../../method/PrettyPrint/i/group.md)
