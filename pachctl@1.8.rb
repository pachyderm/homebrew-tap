require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.0rc2/pachctl_1.8.0rc2_darwin_amd64.zip"
  sha256 "9338499c1304c58825c8a1f975384d06f1e5114b2b236fbc9f495b21eee05189"
  version "v1.8.0rc2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
