cask 'confluent-hub-client' do
  version '7.7.0'
  sha256 'b77dcecd1149fb8998abdde52abc4f868cd1cb055c9eba15ea7c105116da1222'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
