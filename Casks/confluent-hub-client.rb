cask 'confluent-hub-client' do
  version '7.2.0'
  sha256 '44a5d3be5ef57df296f667f7ed66dcc9d30d1db844c5dfb0485e8eaad07df904'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
