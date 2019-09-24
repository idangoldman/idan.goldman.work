task "install" do
  exec("bundle install")
end

task "build" do
  exec("bundle exec jekyll build --trace")
end

task "clean" do
  exec("bundle exec jekyll clean; bundle exec jekyll doctor")
end

task "dev" do
  exec("bundle exec jekyll serve --watch --trace")
end

task "clear:cache" do
  exec("
    curl -X DELETE \"https://api.cloudflare.com/client/v4/zones/#{CLOUDFLARE_ZONE_ID}/purge_cache\" \
     -H \"X-Auth-Email: #{CLOUDFLARE_EMAIL}\" \
     -H \"X-Auth-Key: #{CLOUDFLARE_API_KEY}\" \
     -H \"Content-Type: application/json\" \
     --data '{\"purge_everything\":true}'
  ")
end

task "kit:update" do
  exec("git submodule update --remote kit")
end
