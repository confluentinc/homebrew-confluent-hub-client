cask 'confluent-hub-client' do
  version '8.0.2'
  sha256 'cdf47da0466c40d69f4867afcace75abef2fbdeb1bdd67011f0590c7f94b0668'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
