require "formula"
require "language/go"
require 'erb'


class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.3.0-alpha.2"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0-alpha.2/pachctl_2.3.0-alpha.2_darwin_amd64.zip"
    sha256 "f3c94d7b46cbb11bbcfd569e83b7acf314b2a54fe6e355c7ba01276f94a05bc1"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0-alpha.2/pachctl_2.3.0-alpha.2_darwin_arm64.zip"
    sha256 "698bf75f69d94b5f072f27d5e47860a8aa96d2a02dc1d709d7a866644b782c28"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
