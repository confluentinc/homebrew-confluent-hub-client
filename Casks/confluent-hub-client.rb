cask 'confluent-hub-client' do
  version '7.7.2'
  sha256 'e05ad43dc5c773708841fc1ea256e6f1f184bb0024746b11d4482950f8e05ad8'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
