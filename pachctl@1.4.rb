require "formula"
require "language/go"
require 'erb'


class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.8-RC1/pachctl_1.4.8-RC1_darwin_amd64.zip"
  sha256 "9337a208a8149dd185b6bad2579b053add6fbdf3c4ee5e819f042714c0ede8a1"
  version "v1.4.8-RC1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
