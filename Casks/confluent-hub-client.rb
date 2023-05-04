cask 'confluent-hub-client' do
  version '7.4.0'
  sha256 '43921e411f11a24c19e4951867b718938c72430366046cd477b9595496fc43e8'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
