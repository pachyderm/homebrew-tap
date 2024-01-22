require "formula"
require "language/go"
require 'erb'


class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.0-nightly.20240122"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20240122/pachctl_2.9.0-nightly.20240122_darwin_amd64.zip"
    sha256 "4f38445e04cdf715461fee3c21e98c21dbc89cb16a6175ff4bb33eaf5830873d"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20240122/pachctl_2.9.0-nightly.20240122_darwin_arm64.zip"
    sha256 "6fc9747ee2c5cdfe7b75f2503691ee890916a27023fd5ad430d8e0c721c5386a"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
