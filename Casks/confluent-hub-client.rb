cask 'confluent-hub-client' do
  version '8.1.1'
  sha256 'ef27e8a44dbc95a2925ecf0d8074f371b51fcc2cce9e4a39e648ff94c6ee8eaa'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
