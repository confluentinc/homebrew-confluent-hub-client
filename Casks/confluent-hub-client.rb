cask 'confluent-hub-client' do
  version '7.3.0'
  sha256 '0adb28bf3426101142465c1c0ea232b5f1b3d70918a31a76aea555e47920d2cb'
  url "http://client.hub.confluent.io/confluent-hub-client-#{version}-package.tar.gz"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  binary "#{staged_path}/bin/confluent-hub"
end
