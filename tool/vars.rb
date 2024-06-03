VERSIONS = %w[
  3.0
  3.1
  3.2
  3.3
  3.4
]

DB_BASE = File.expand_path("../db", __dir__)

DOC_BASE = File.expand_path("../doctree", __dir__)
REF_BASE = "refm" # was "#{DOC_BASE}/refm"

TMP_HTML_BASE = File.expand_path("../tmp/html", __dir__)

BITCLUST_BASE = File.expand_path("../bitclust", __dir__)
BITCLUST_DATA = "#{BITCLUST_BASE}/data/bitclust"
TEMPLATE = "#{BITCLUST_DATA}/template.offline"
CATALOG = "#{BITCLUST_DATA}/catalog"

DOC_ROOT = File.expand_path("../html/ja", __dir__)
