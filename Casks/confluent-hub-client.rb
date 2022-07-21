cask 'confluent-hub-client' do
  version '7.2.1'
  sha256 '92fa71f9901d7950cf770587f1c024f1f30fa68be6c3ae06f32af85912e97a2c'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
