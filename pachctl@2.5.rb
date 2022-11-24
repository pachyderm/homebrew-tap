require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-nightly.20221124"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221124/pachctl_2.5.0-nightly.20221124_darwin_amd64.zip"
    sha256 "89e8727639909049a61207b38e4e84fde96d325a25adf66f2cd80a24be5197c7"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221124/pachctl_2.5.0-nightly.20221124_darwin_arm64.zip"
    sha256 "b7a1dae1ced66b6030d5f8749149823f53fc24f301679ff309fcb5251f3d42c1"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
