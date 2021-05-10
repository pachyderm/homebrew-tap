require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.15/pachctl_2.0.0-alpha.15_darwin_amd64.zip"
  sha256 "95480cd49336a455d41cdc4925ac7202a9ede43d682ff569222f68cb73f67434"
  version "v2.0.0-alpha.15"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
