cask 'confluent-hub-client' do
  version '7.3.4'
  sha256 '944ef121c257ebf44905df1bc8de81d2d140ac158e66d8ce6379752ac24ea9a6'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
