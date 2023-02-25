cask 'confluent-hub-client' do
  version '7.3.2'
  sha256 '5513032967e2b75af7eb527ac37b64ab7fb018fb91c9d23006542752799e0cb5'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
