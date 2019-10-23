# Rake files repo
require 'rebo'

spec = Gem::Specification.find_by_name 'rebo'
load "#{spec.gem_dir}/lib/rebo/Rakefile"

SASS_CONFIG = SASS_CONFIG.merge({
  source_file: "./source/scss/default.scss",
  output_file: "./public/css/default.css",
  include_path: "./kit",
  importer: "./kit/src/importer.js"
})
