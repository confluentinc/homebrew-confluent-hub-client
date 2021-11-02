cask 'confluent-hub-client' do
  version '7.0.0'
  sha256 '3f1ae08fdf3c34a753741b976aee9b07056d3528e86fe9f144e99f2431d75a7f'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
