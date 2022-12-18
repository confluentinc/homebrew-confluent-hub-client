cask 'confluent-hub-client' do
  version '7.3.1'
  sha256 '8decfb5e59fb075af6fdc4d2c3c07802dc851831826ba33edff20d4a99103408'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
