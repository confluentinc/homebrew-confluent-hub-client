cask 'confluent-hub-client' do
  version '7.9.1'
  sha256 'f32611977ad5dd0ef1841c1eb8b374cb8f304d2a8685fc208eea06b35aaa3f9a'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
