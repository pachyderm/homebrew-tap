require "formula"
require "language/go"
require 'erb'


class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.3.0-alpha.8"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0-alpha.8/pachctl_2.3.0-alpha.8_darwin_amd64.zip"
    sha256 "36cb147987692f5918d4751b920719e3b24bfe8888f8588a2da7dd70fd52a4e0"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0-alpha.8/pachctl_2.3.0-alpha.8_darwin_arm64.zip"
    sha256 "30b4956c2535be7a70528bc32dbb8d1bd1aef17ae0bda95d88937bc511e23274"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
