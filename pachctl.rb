require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.5"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.5/pachctl_2.5.5_darwin_amd64.zip"
    sha256 "779b1b812614957a0a84b295eff2449be8977b1485c633dbb530b50066fccd06"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.5/pachctl_2.5.5_darwin_arm64.zip"
    sha256 "61d908b858bc71fab6356ffaa2964917091c1a8f0af228c78b7fa1108078bf52"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
