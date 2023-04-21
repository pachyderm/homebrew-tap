require "formula"
require "language/go"
require 'erb'


class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.0-nightly.20230421"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230421/pachctl_2.6.0-nightly.20230421_darwin_amd64.zip"
    sha256 "e377b7e461d05017991045a13befc2d367c79ad6b68e219528861273f3a2a89c"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230421/pachctl_2.6.0-nightly.20230421_darwin_arm64.zip"
    sha256 "d3d89a660f83710068b924e782046b32c8bee3b4e966bb5d150657171aef5174"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
