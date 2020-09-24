cask 'confluent-hub-client' do
  version '6.0.0'
  sha256 'cc22a0e726db57079a5dbeefaf166b45444f8e0293a18e540c40ae2869f00072'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
