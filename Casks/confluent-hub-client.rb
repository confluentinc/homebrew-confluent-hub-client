cask 'confluent-hub-client' do
  version '7.5.0'
  sha256 '847dcaa23f494a406c3dd8e9d4ccec6bb00d2f7d714db794ada3710ba1806cbe'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
