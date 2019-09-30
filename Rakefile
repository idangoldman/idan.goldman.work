task "install" do
  # sh "bundle install --path vendor/bundle"
  # sh "bundle clean [--force]"
  sh "bundle install"
end

task "build" => ["clean"] do
  sh "bundle exec jekyll build --trace"
end

task "dev" => ["clean"] do
  sh "bundle exec jekyll serve --watch --trace"
end

task "dev:kill" do
  sh "kill $(ps aux | grep '[j]ekyll' | awk '{print $2}')"
end

task "clean" do
  sh "bundle exec jekyll clean; bundle exec jekyll doctor"
end

task "clean:cache" do
  sh "
    curl -X DELETE \"https://api.cloudflare.com/client/v4/zones/#{CLOUDFLARE_ZONE_ID}/purge_cache\" \
     -H \"X-Auth-Email: #{CLOUDFLARE_EMAIL}\" \
     -H \"X-Auth-Key: #{CLOUDFLARE_API_KEY}\" \
     -H \"Content-Type: application/json\" \
     --data '{\"purge_everything\":true}'
  "
end

task "kit:update" do
  sh "git submodule update --remote kit"
end
