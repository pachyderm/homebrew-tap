require "formula"
require "language/go"
require 'erb'


class PachctlAT110 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.10.5-bf21a5f6408a6011422f97fc0802c9728fc1b16c/pachctl_1.10.5-bf21a5f6408a6011422f97fc0802c9728fc1b16c_darwin_amd64.zip"
  sha256 "19f55139213f61dfa33c5e8c61c29acbf793d7398a7c585126efd205695623c2"
  version "v1.10.5-bf21a5f6408a6011422f97fc0802c9728fc1b16c"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
