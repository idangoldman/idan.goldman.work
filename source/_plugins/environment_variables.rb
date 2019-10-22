require 'dotenv/load'

module Jekyll
  class EnvironmentVariablesGenerator < Generator
    def generate(site)
      site.config['ENV'] = ENV['JEKYLL_ENV'] || 'development'
      site.config['GA_ID'] = ENV['GA_ID'] || 12345
      site.config['FORMSPREE_URL'] = ENV['FORMSPREE_URL'] || 'https://formspree.io/...'
    end
  end
end
