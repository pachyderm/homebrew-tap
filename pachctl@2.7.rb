require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230711"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230711/pachctl_2.7.0-nightly.20230711_darwin_amd64.zip"
    sha256 "658b37001bf760c64a4b6ad03510acfaa17fad8ce4e96d157f4beb57723f4c29"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230711/pachctl_2.7.0-nightly.20230711_darwin_arm64.zip"
    sha256 "a1205117f99025624e889acf889347d3ff313fe38ef6b518b5ec9e801e8ca76c"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
