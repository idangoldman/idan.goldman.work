# Rake files repo
require 'rebo'

spec = Gem::Specification.find_by_name 'rebo'
load "#{spec.gem_dir}/lib/rebo/Rakefile"

SASS_CONFIG.merge!({
  source_file: "./source/scss/default.scss",
  output_file: "./public/css/default.css",
  include_path: "./node_modules/@idangoldman/",
  importer: "./node_modules/@idangoldman/kit/src/importer.js"
})

desc "Development environments stuff"
task :dev => ["jekyll:dev"]

desc "Deployment to Github"
task :deploy => ["jekyll:deploy"]
