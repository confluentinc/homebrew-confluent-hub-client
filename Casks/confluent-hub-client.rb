cask 'confluent-hub-client' do
  version '7.6.1'
  sha256 '02f43065a455b44cfe8725d8dd83e96952cbfb07af5607edc84f9085a3ac28d1'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
