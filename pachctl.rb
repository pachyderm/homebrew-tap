require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.3"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.3/pachctl_2.9.3_darwin_amd64.zip"
    sha256 "c50837e45228cff53a09e95d37ff607b0132efd5bc252bbe359aa949df771114"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.3/pachctl_2.9.3_darwin_arm64.zip"
    sha256 "6d1834cc627d503c88532cabd9b05ca4b6a48065c83054ad4ad8d3c4289901f4"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
