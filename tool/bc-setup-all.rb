#!/usr/bin/env ruby

require 'fileutils'
require_relative 'vars'

def setup_db(version)
  Dir.chdir(DOC_BASE) do
    db = "#{DB_BASE}/db-#{version}"
    FileUtils.rm_rf db
    system(*%W"bundle exec bitclust -d #{db} init version=#{version} encoding=utf-8")
    system(*%W"bundle exec bitclust -d #{db} update --stdlibtree=#{REF_BASE}/api/src")
    system(*%W"bundle exec bitclust -d #{db} --capi update" + Dir.glob("#{REF_BASE}/capi/src/*"))
    puts "#{version} is done."
  end
end

VERSIONS.reverse_each do |version|
  setup_db(version)
end
