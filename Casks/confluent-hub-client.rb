cask 'confluent-hub-client' do
  version '8.3.1'
  sha256 '4a498853807784f366b9fa848747b54c9038a1dfac296d24980f3f6d0f09583d'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
