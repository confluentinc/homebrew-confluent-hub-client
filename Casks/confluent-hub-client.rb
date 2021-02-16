cask 'confluent-hub-client' do
  version '6.1.0'
  sha256 '57340b744bb191627940d9b439e8f385e786f43b3e1c24972300fefc52721d73'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
