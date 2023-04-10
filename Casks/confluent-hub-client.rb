cask 'confluent-hub-client' do
  version '7.2.5'
  sha256 '69df9d5e888cb82e7ac5a7fe67a6729cf02b5f8900436aada07fb93ec578f923'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
