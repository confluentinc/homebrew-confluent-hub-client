cask 'confluent-hub-client' do
  version '6.2.1'
  sha256 '78ad12df4fdf7ba05669c245566db4265dd4bcc1b2c3ee2e784efbe7e3db35ea'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
