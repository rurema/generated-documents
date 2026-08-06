# class RDoc::Options < Object

rdoc コマンドのオプションを解析するためのクラスです。

それぞれのオプションの詳細に関しては、[rdoc#usage](../library/rdoc.md#usage) を参照してください。

### カスタムオプション {#custom_options}

[RDoc](../class/RDoc.md) のジェネレータでは、[RDoc::Options](../class/RDoc=3a=3aOptions.md) をフックして独自のオプションを指定できます。

[Object::ARGV](../method/Object/c/ARGV.md) に --format が含まれていた場合、[RDoc](../class/RDoc.md) はジェネレータ独自のオプションを解析するために setup_options メソッドを呼び出します。カスタムオプションを指定する場合は --format オプションは必ず指定する必要があります。rdoc --help を実行すると追加したオプションの一覧が確認できます。

```ruby title="例"
class RDoc::Generator::Spellcheck
  RDoc::RDoc.add_generator self

  def self.setup_options rdoc_options
    op = rdoc_options.option_parser

    op.on('--spell-dictionary DICTIONARY',
          RDoc::Options::Path) do |dictionary|
      # RDoc::Options に spell_dictionary アクセサの定義が必要
      rdoc_options.spell_dictionary = dictionary
    end
  end
end
```

## Instance Methods

- [all_one_file](../method/RDoc=3a=3aOptions/i/all_one_file.md)
- [charset](../method/RDoc=3a=3aOptions/i/charset.md)
- [coverage_report](../method/RDoc=3a=3aOptions/i/coverage_report.md)
- [coverage_report=](../method/RDoc=3a=3aOptions/i/coverage_report=3d.md)
- [css](../method/RDoc=3a=3aOptions/i/css.md)
- [diagram](../method/RDoc=3a=3aOptions/i/diagram.md)
- [dry_run](../method/RDoc=3a=3aOptions/i/dry_run.md)
- [dry_run=](../method/RDoc=3a=3aOptions/i/dry_run=3d.md)
- [encoding](../method/RDoc=3a=3aOptions/i/encoding.md)
- [encoding=](../method/RDoc=3a=3aOptions/i/encoding=3d.md)
- [exclude](../method/RDoc=3a=3aOptions/i/exclude.md)
- [exclude=](../method/RDoc=3a=3aOptions/i/exclude=3d.md)
- [extra_accessor_flags](../method/RDoc=3a=3aOptions/i/extra_accessor_flags.md)
- [extra_accessors](../method/RDoc=3a=3aOptions/i/extra_accessors.md)
- [fileboxes](../method/RDoc=3a=3aOptions/i/fileboxes.md)
- [files](../method/RDoc=3a=3aOptions/i/files.md)
- [finish_page_dir](../method/RDoc=3a=3aOptions/i/finish_page_dir.md)
- [force_output](../method/RDoc=3a=3aOptions/i/force_output.md)
- [force_output=](../method/RDoc=3a=3aOptions/i/force_output=3d.md)
- [force_update](../method/RDoc=3a=3aOptions/i/force_update.md)
- [formatter](../method/RDoc=3a=3aOptions/i/formatter.md)
- [formatter=](../method/RDoc=3a=3aOptions/i/formatter=3d.md)
- [generator](../method/RDoc=3a=3aOptions/i/generator.md)
- [generator=](../method/RDoc=3a=3aOptions/i/generator=3d.md)
- [hyperlink_all](../method/RDoc=3a=3aOptions/i/hyperlink_all.md)
- [hyperlink_all=](../method/RDoc=3a=3aOptions/i/hyperlink_all=3d.md)
- [image_format](../method/RDoc=3a=3aOptions/i/image_format.md)
- [include_line_numbers](../method/RDoc=3a=3aOptions/i/include_line_numbers.md)
- [inline_source](../method/RDoc=3a=3aOptions/i/inline_source.md)
- [line_numbers](../method/RDoc=3a=3aOptions/i/line_numbers.md)
- [line_numbers=](../method/RDoc=3a=3aOptions/i/line_numbers=3d.md)
- [main_page](../method/RDoc=3a=3aOptions/i/main_page.md)
- [main_page=](../method/RDoc=3a=3aOptions/i/main_page=3d.md)
- [markup](../method/RDoc=3a=3aOptions/i/markup.md)
- [markup=](../method/RDoc=3a=3aOptions/i/markup=3d.md)
- [merge](../method/RDoc=3a=3aOptions/i/merge.md)
- [op_dir](../method/RDoc=3a=3aOptions/i/op_dir.md)
- [op_dir=](../method/RDoc=3a=3aOptions/i/op_dir=3d.md)
- [op_name](../method/RDoc=3a=3aOptions/i/op_name.md)
- [option_parser](../method/RDoc=3a=3aOptions/i/option_parser.md)
- [option_parser=](../method/RDoc=3a=3aOptions/i/option_parser=3d.md)
- [page_dir](../method/RDoc=3a=3aOptions/i/page_dir.md)
- [page_dir=](../method/RDoc=3a=3aOptions/i/page_dir=3d.md)
- [parse](../method/RDoc=3a=3aOptions/i/parse.md)
- [pipe](../method/RDoc=3a=3aOptions/i/pipe.md)
- [pipe=](../method/RDoc=3a=3aOptions/i/pipe=3d.md)
- [promiscuous](../method/RDoc=3a=3aOptions/i/promiscuous.md)
- [quiet](../method/RDoc=3a=3aOptions/i/quiet.md)
- [rdoc_include](../method/RDoc=3a=3aOptions/i/rdoc_include.md)
- [root](../method/RDoc=3a=3aOptions/i/root.md)
- [root=](../method/RDoc=3a=3aOptions/i/root=3d.md)
- [sanitize_path](../method/RDoc=3a=3aOptions/i/sanitize_path.md)
- [show_all](../method/RDoc=3a=3aOptions/i/show_all.md)
- [show_all=](../method/RDoc=3a=3aOptions/i/show_all=3d.md)
- [show_hash](../method/RDoc=3a=3aOptions/i/show_hash.md)
- [static_path](../method/RDoc=3a=3aOptions/i/static_path.md)
- [static_path=](../method/RDoc=3a=3aOptions/i/static_path=3d.md)
- [tab_width](../method/RDoc=3a=3aOptions/i/tab_width.md)
- [template](../method/RDoc=3a=3aOptions/i/template.md)
- [template_dir](../method/RDoc=3a=3aOptions/i/template_dir.md)
- [template_dir=](../method/RDoc=3a=3aOptions/i/template_dir=3d.md)
- [title](../method/RDoc=3a=3aOptions/i/title.md)
- [title=](../method/RDoc=3a=3aOptions/i/title=3d.md)
- [verbosity](../method/RDoc=3a=3aOptions/i/verbosity.md)
- [verbosity=](../method/RDoc=3a=3aOptions/i/verbosity=3d.md)
- [visibility](../method/RDoc=3a=3aOptions/i/visibility.md)
- [visibility=](../method/RDoc=3a=3aOptions/i/visibility=3d.md)
- [warn](../method/RDoc=3a=3aOptions/i/warn.md)
- [webcvs](../method/RDoc=3a=3aOptions/i/webcvs.md)
- [write_options](../method/RDoc=3a=3aOptions/i/write_options.md)

## Constants

- [DEPRECATED](../method/RDoc=3a=3aOptions/c/DEPRECATED.md)
- [SPECIAL](../method/RDoc=3a=3aOptions/c/SPECIAL.md)
