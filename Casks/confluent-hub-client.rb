cask 'confluent-hub-client' do
  version '5.0.1-SNAPSHOT'
  sha256 '3bf8a99e08b2dafe91ea6c114c1960f8cedc57c3df8a0bce77d01a4c68dc11d3'
  url "https://s3-us-west-2.amazonaws.com/confluent-hub-client/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
