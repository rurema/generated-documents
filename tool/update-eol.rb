#!/usr/bin/env ruby
# frozen_string_literal: true

# ruby/www.ruby-lang.org の _data/branches.yml から各ブランチのメンテナンス
# 状況を取得し、EOL 警告バナーの閾値 MINIMUM_SUPPORTED_RUBY_VERSION
# (tool/vars.rb)を更新する。#144 参照。
#
# 判定: status が "eol" でないブランチのうち最小のバージョンを閾値とする。
#
# 挙動:
# - 変更不要(導出値 == 現行値)なら何もしない(changed=false)
# - 1段階の引き上げなら vars.rb を書き換え、automerge=true を出力
# - 2段階以上の引き上げも書き換えるが automerge=false
#   (ワークフロー側で auto-merge せず、人間レビュー用の PR として残す)
# - 引き下げ・VERSIONS に無い値・取得/パース失敗は何も書き換えずエラー終了
#
# 出力は GITHUB_OUTPUT(あれば)と標準出力の両方に書く。
# テスト用に ARGV[0] でローカルの branches.yml ファイルを指定できる。

require "net/http"
require "yaml"
require "date"
require_relative "vars"

BRANCHES_YML_URL = "https://raw.githubusercontent.com/ruby/www.ruby-lang.org/master/_data/branches.yml"

def emit(key, value)
  if (path = ENV["GITHUB_OUTPUT"])
    File.open(path, "a") { |f| f.puts "#{key}=#{value}" }
  end
  puts "#{key}=#{value}"
end

if ARGV[0]
  body = File.read(ARGV[0])
else
  res = Net::HTTP.get_response(URI(BRANCHES_YML_URL))
  abort "branches.yml の取得に失敗: #{res.code} #{BRANCHES_YML_URL}" unless res.is_a?(Net::HTTPSuccess)
  body = res.body
end

branches = YAML.safe_load(body, permitted_classes: [Date])
abort "branches.yml の構造が想定外です" unless branches.is_a?(Array) && branches.all? { |b| b.is_a?(Hash) && b["name"] }

supported = branches.reject { |b| b["status"].to_s == "eol" }.map { |b| b["name"].to_s }
abort "サポート中のブランチが見つかりません(全 eol は想定外)" if supported.empty?

derived = supported.min_by { |v| Gem::Version.new(v) }
current = MINIMUM_SUPPORTED_RUBY_VERSION
derived_v = Gem::Version.new(derived)

emit("derived", derived)

if derived_v == current
  puts "MINIMUM_SUPPORTED_RUBY_VERSION は #{current} のままで正しい(変更なし)"
  emit("changed", "false")
  exit 0
end

if derived_v < current
  abort "導出値 #{derived} が現行値 #{current} より古い。branches.yml が異常な可能性があるため書き換えない"
end

unless VERSIONS.include?(derived)
  abort "導出値 #{derived} が VERSIONS に存在しない。vars.rb の VERSIONS 更新(リリース対応)が先"
end

cur_idx = VERSIONS.index(current.to_s)
steps = cur_idx ? VERSIONS.index(derived) - cur_idx : 999

vars_path = File.expand_path("vars.rb", __dir__)
src = File.read(vars_path)
pattern = /^MINIMUM_SUPPORTED_RUBY_VERSION = Gem::Version\.new\("#{Regexp.escape(current.to_s)}"\)$/
abort "vars.rb に MINIMUM_SUPPORTED_RUBY_VERSION の行が見つからない" unless src.match?(pattern)
File.write(vars_path, src.sub(pattern, %Q(MINIMUM_SUPPORTED_RUBY_VERSION = Gem::Version.new("#{derived}"))))

emit("changed", "true")
emit("old_version", current.to_s)
emit("new_version", derived)
emit("automerge", (steps == 1).to_s)
if steps == 1
  puts "#{current} -> #{derived} に更新(1段階なので auto-merge 可)"
else
  puts "#{current} -> #{derived} に更新(#{steps}段階の引き上げのため要人間レビュー。auto-merge しない)"
end
