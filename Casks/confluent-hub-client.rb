cask 'confluent-hub-client' do
  version '8.2.1'
  sha256 'cadb35e3797bed28acb42979cd6dbb12018071f00e73000d4abe333eb3caca13'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
