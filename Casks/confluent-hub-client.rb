cask 'confluent-hub-client' do
  version '7.7.1'
  sha256 '988f61ec7551375772f1f6832991863c59ba290c99aa83ad5173363a7cde9966'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
