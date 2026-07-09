# generated-documents

This repository is for generated documents of <https://docs.ruby-lang.org/ja/>.

You should not serve them on the Internet,
because they include host specific information.

## バージョンの扱い

- `tool/vars.rb` の `VERSIONS` — 毎日 doctree HEAD の `manual/` から DB を再構築し、
  静的 HTML を再生成するバージョン。
- `tool/vars.rb` の `FROZEN_VERSIONS` — 凍結版。`db/db-<version>` は Import された
  固定 DB で再構築しない。静的 HTML は bitclust（テンプレート）が更新されたときだけ
  `tool/bc-static-frozen.rb` で再生成される（編集リンクなし）。
  検索ページ（`html/ja/search/`）には常に全バージョンが含まれる。

### バージョンを凍結する手順

あるバージョン X のドキュメント更新を終了するとき:

1. doctree で、X の DB 生成に使う最終コミットに `frozen-X` タグを打つ
2. そのコミットの doctree から X の DB を構築し、`db/db-X` へ
   `Import db-X (generated on <日付>)` としてコミットする
3. `tool/vars.rb` で X を `VERSIONS` から `FROZEN_VERSIONS` へ移す
4. 次回の generate 実行（bitclust 更新時）または手動の `tool/bc-static-frozen.rb` で
   X の静的 HTML が編集リンクなしで再生成される

凍結後に X のドキュメントを修正する必要が出たら、doctree の `frozen-X` タグから
ブランチを作って修正し、DB を再構築して Import し直す（タグも打ち直す）。
各凍結版の復元ソースの詳細は doctree の docs/OldVersionArchives.md を参照。
