cask 'confluent-hub-client' do
  version '5.3.3'
  sha256 '9fcec9b1db6765f21bff335386a0ad66c6ca83c1e57628325114fa6a2368a488'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
