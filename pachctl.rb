require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.0"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0/pachctl_2.6.0_darwin_amd64.zip"
    sha256 "4eda1dc67ea788ef3a17db5966833919d9c110b553a83d9545a72671439d9490"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0/pachctl_2.6.0_darwin_arm64.zip"
    sha256 "b7f9a4ee6ec41d87c306baae101bc2cd3e8114dbcaf55632323006755f9befef"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
