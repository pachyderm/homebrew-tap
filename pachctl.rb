require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.3"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.3/pachctl_2.5.3_darwin_amd64.zip"
    sha256 "8d09714a390170a972f14353c668c4825b71e13840049db29b8376f6917edde2"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.3/pachctl_2.5.3_darwin_arm64.zip"
    sha256 "ccb2fa5db6da9d15d9202847ba418b37f0e62595bab602748f4ffad477d1fafd"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
