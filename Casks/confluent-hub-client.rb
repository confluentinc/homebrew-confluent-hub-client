cask 'confluent-hub-client' do
  version '7.1.1'
  sha256 'fd7aa849bbd547996c6272efade3cb50e5affcb30766b85479f977be12286ae2'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
