cask 'confluent-hub-client' do
  version '7.4.1'
  sha256 '33fa280455634dcde7a74fdf0e22955d56a12823ea5e175708fa04a5aa743da8'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
