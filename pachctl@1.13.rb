require "formula"
require "language/go"
require 'erb'


class PachctlAT113 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.13.4/pachctl_1.13.4_darwin_amd64.zip"
  sha256 "7fc6e33739eb134dfdfdc89478ecdf4df84d9ccc1c420be8559c82622e17bff6"
  version "v1.13.4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
