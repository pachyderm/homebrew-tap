require "formula"
require "language/go"
require 'erb'


class PachctlAT112 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.12.2/pachctl_1.12.2_darwin_amd64.zip"
  sha256 "bc3ebb423f638104bc7aa630e5c915066065ae0bc1ad6736e14efb3f033b0395"
  version "v1.12.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
