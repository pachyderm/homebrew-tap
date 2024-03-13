require "formula"
require "language/go"
require 'erb'


class PachctlAT210 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.10.0-alpha.3"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-alpha.3/pachctl_2.10.0-alpha.3_darwin_amd64.zip"
    sha256 "bdae0d5c6fc8c62dcd19776351cfdc250f1e65c54ae539dd7896e9f90639bbb1"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-alpha.3/pachctl_2.10.0-alpha.3_darwin_arm64.zip"
    sha256 "4edfb54af72496f361083648b6f450534b4475d5486a00f1059f2c7be54c76e8"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
