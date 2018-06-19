class ConfluentHubClient < Formula
  desc "Confluent Hub client"
  homepage "https://confluent.io"
  url "https://github.com/confluentinc/hub-client/releases/download/v5.0.0-beta32/confluent-hub-client-v5.0.0-beta32-package.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "5.0.0"
  sha256 "8b2a817f868ddb79900bafd4f6cd4c91e21bdaec7fdafbbdb2629b451bb0e523"

  def install
    bin.install "bin/confluent-hub"
    prefix.install Dir["etc"]
    prefix.install Dir["share"]
  end
end
