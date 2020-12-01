cask 'confluent-hub-client' do
  version '6.0.1'
  sha256 'aab374a27a8afa2217eda554f3132d6c7a8857f148823698d8c2c00ed827cbbe'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
