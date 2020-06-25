cask 'confluent-hub-client' do
  version '5.5.1'
  sha256 'ed9ff47697216d1e8fe192652f51b30f7446e06a3de28191bd1c5782f4894bba'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
