cask 'confluent-hub-client' do
  version '5.4.1'
  sha256 '1c8569169a4cf57bf13d6b860f80a6f01cde0922372c4034605eb00a0cecfeba'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
