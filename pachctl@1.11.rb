require "formula"
require "language/go"
require 'erb'


class PachctlAT111 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.11.2-98dcc00f868936e398f6667632b6e2cc30669272/pachctl_1.11.2-98dcc00f868936e398f6667632b6e2cc30669272_darwin_amd64.zip"
  sha256 "a9bc46a7567cbf811083c9d789c56eee502b74581dd6352df2c1bcb0ce4ba685"
  version "v1.11.2-98dcc00f868936e398f6667632b6e2cc30669272"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
