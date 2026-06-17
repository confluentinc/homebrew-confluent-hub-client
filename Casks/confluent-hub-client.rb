cask 'confluent-hub-client' do
  version '8.3.0'
  sha256 'ccd7a540985879342ecf3247545d2f6d6b3d1c206d202526ba120706a0098629'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
