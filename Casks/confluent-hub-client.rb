cask 'confluent-hub-client' do
  version '5.3.0-rc2'
  sha256 'fd0e76dc5c9433888168da963bad427e899381323c71fb49751bd247e9ee488e'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
