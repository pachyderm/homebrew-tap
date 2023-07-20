require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230720"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230720/pachctl_2.7.0-nightly.20230720_darwin_amd64.zip"
    sha256 "fda2dcd5ca94326d29f26b3c588a80d33ffbb20f786ea3107af6c72345f8903e"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230720/pachctl_2.7.0-nightly.20230720_darwin_arm64.zip"
    sha256 "391386059f8f0b04dbd529c82e29f620f6b79dbeb67635b0c945f8a2dd168e10"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
