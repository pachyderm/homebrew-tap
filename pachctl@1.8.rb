require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.2-c94af25b6a6a45ab38980e2b29010bef8869ee85/pachctl_1.8.2-c94af25b6a6a45ab38980e2b29010bef8869ee85_darwin_amd64.zip"
  sha256 "91e65f3cb71bae84ec6727614da9a3d63507c1b71d373306fd6ca246549e7242"
  version "v1.8.2-c94af25b6a6a45ab38980e2b29010bef8869ee85"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
