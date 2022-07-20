cask 'confluent-hub-client' do
  version '7.1.2'
  sha256 '6934acd12ce571dc6e63e2655592a42f2a9f1497fa5e9acf313798d9d93fb7b7'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
