require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.14/pachctl_2.0.0-alpha.14_darwin_amd64.zip"
  sha256 "3dedeedad6e05aca82ec0f90fffae8f4018ae962573425c5e73ae77e61080871"
  version "v2.0.0-alpha.14"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
