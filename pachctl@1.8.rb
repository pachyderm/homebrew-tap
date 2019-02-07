require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.3/pachctl_1.8.3_darwin_amd64.zip"
  sha256 "0b948ab16e5c4a1f8942aa175572b0ff83ed382b24320d9dec0fb8584821fab9"
  version "v1.8.3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
