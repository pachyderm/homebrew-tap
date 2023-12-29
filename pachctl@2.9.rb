require "formula"
require "language/go"
require 'erb'


class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.0-nightly.20231229"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20231229/pachctl_2.9.0-nightly.20231229_darwin_amd64.zip"
    sha256 "7c095543c2e40d8f1c5f1ab3b8a4d925f010034566836cb9cc401dd9898abedb"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20231229/pachctl_2.9.0-nightly.20231229_darwin_arm64.zip"
    sha256 "e98b05b91d7c99fb09cf20fb44122e11dd318e11e22fafda81e02c263bfe6484"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
