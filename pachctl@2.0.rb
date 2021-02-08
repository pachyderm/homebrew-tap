require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.2/pachctl_2.0.0-alpha.2_darwin_amd64.zip"
  sha256 "8a70c5b2e32c2bd3b560489de4af66da16fc6a6c"
  version "v2.0.0-alpha.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
