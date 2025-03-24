cask 'confluent-hub-client' do
  version '7.8.2'
  sha256 '09a334a3e48666f6e4e8c5478bf43667c0066116f2d1518e5c1455763b602f64'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
