cask 'confluent-hub-client' do
  version '5.3.0-rc4'
  sha256 '8c092e64cb230b4ab0fffe3f50d684d4f4621c822e510630ee3afd2fb65adfc5'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
