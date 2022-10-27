require "formula"
require "language/go"
require 'erb'


class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.3.7"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.7/pachctl_2.3.7_darwin_amd64.zip"
    sha256 "294c7b56149aaa07f53ffe45a70c1135597d2bfb08895bef1c40180c2470a767"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.7/pachctl_2.3.7_darwin_arm64.zip"
    sha256 "12291fb0df9a328dbafd8029b299b8aa4b38a03fa8557cbf8e58a4834c7286e6"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
