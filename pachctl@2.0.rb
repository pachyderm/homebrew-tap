require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.29/pachctl_2.0.0-alpha.29_darwin_amd64.zip"
  sha256 "469d4006d55a1edc919b55afb5a9991bc6fe07330a64dc87de3f45bebb628e9d"
  version "v2.0.0-alpha.29"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
