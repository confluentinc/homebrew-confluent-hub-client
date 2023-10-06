cask 'confluent-hub-client' do
  version '7.5.1'
  sha256 '5265705dde94730e852aaf99eb8181ed1ff74a5a4d7bc60b82194987f094bb69'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
