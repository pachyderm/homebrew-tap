require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.21/pachctl_2.0.0-alpha.21_darwin_amd64.zip"
  sha256 "750d958870ea14c49422fd8b35ac0724ed422b8666b6c4169055b7db97848a37"
  version "v2.0.0-alpha.21"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
