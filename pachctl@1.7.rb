require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.0rc2/pachctl_1.7.0rc2_darwin_amd64.zip"
  sha256 "3bcd391021b507f8e38f1d1b1ac45ecebd49352901959bfb51f63c1059c6e484"
  version "v1.7.0"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
