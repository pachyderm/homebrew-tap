require "formula"
require "language/go"
require 'erb'


class PachctlAT24 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.5"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.5/pachctl_2.4.5_darwin_amd64.zip"
    sha256 "64350fc7a1ac1afea2fd296e252ff16e0fe1c51a7a12fbdf6a8da1f685a39f59"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.5/pachctl_2.4.5_darwin_arm64.zip"
    sha256 "345516554f99ea9be591ab3f04905544623e70ca50d69af0c897e3b2f9b3ae4d"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
