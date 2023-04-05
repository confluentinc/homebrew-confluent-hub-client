cask 'confluent-hub-client' do
  version '7.3.3'
  sha256 'a7de7d1f8017467a038a24fbc65ebecb20d586d59f92a69ddec639e9661c986c'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
