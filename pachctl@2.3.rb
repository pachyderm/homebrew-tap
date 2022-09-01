require "formula"
require "language/go"
require 'erb'


class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.3.2"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.2/pachctl_2.3.2_darwin_amd64.zip"
    sha256 "d88473dcc1565da4342c3070103f3c696b1ae2e70a91a1e608bb4edb587d1fea"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.2/pachctl_2.3.2_darwin_arm64.zip"
    sha256 "f76ee0064fa1ec0eb3f27305098d63f91d67f0f98c7b8c67d6e13d970aa03699"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
