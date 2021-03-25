require "formula"
require "language/go"
require 'erb'


class PachctlAT113 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.13.0-rc.1/pachctl_1.13.0-rc.1_darwin_amd64.zip"
  sha256 "25f022065f826724856b282b6c43b79eb5e956890ad130de414f2895f0f456da"
  version "v1.13.0-rc.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
