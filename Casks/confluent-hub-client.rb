cask 'confluent-hub-client' do
  version '8.0.0'
  sha256 '10501a903058be51a11ee05eb3f2073239344fae95934b4d2fbb9fce7a5c0f72'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
