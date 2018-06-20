class ConfluentHubClient < Formula
  desc "Confluent Hub Client"
  homepage "https://confluent.io"
  url "https://s3-us-west-2.amazonaws.com/confluent-hub-client/confluent-hub-client-v5.0.0-beta201806200000-package.tar.gz"
  version "5.0.0-beta201806200000"
  sha256 "bc52244627b5a516a02480f8800637a26269fd896fdc78d3499b75a5aedc834b"

  def install
    bin.install "bin/confluent-hub"
    prefix.install Dir["etc"]
    prefix.install Dir["share"]
  end
end
