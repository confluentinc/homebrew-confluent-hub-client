cask 'confluent-hub-client' do
  version '5.1.0-SNAPSHOT'
  sha256 'a0c008f95cd3cd01b3a24729a27307ac5d01990cd9b73b185ccfb0728677af80'
  url "https://s3-us-west-2.amazonaws.com/confluent-hub-client/ConfluentHubClient-#{version}.pkg"
  name 'Confluent Hub Client'
  homepage 'https://www.confluent.io/hub/'
  pkg "ConfluentHubClient-#{version}.pkg"

   postflight do
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Applications/ConfluentHubClient.app/Contents/bin/confluent-hub", '/usr/local/bin/confluent-hub'],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Applications/ConfluentHubClient.app/Contents/share/java/confluent-hub-client", '/usr/local/share/java/confluent-hub-client'],
                   sudo: true
  end

  uninstall delete:    [
                         '/usr/local/bin/confluent-hub',
                         '/usr/local/share/java/confluent-hub-client',
                         '/Applications/ConfluentHubClient.app'
                       ]
end
