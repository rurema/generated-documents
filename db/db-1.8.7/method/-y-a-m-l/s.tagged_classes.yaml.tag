names=tagged_classes
visibility=public
kind=added
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.jfEaAt/src/refm/api/src/yaml/tag.rd

--- tagged_classes -> {String => Class}

タグ URI と、それが対応するクラスの一覧を返します。

例:

 require "pp"
 require "yaml"
 pp YAML.tagged_classes
 # => {"tag:ruby.yaml.org,2002:struct"=>Struct,
 "tag:yaml.org,2002:set"=>YAML::Set,
 "tag:ruby.yaml.org,2002:sym"=>Symbol,
 "tag:yaml.org,2002:omap"=>YAML::Omap,
 ...}
