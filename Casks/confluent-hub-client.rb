cask 'confluent-hub-client' do
  version '6.2.1'
  sha256 '5dd2171827a52fa625b5d4a5432b447807b4322eee3fd1682054be5c5bc4f402'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
