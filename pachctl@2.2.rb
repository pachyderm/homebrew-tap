require "formula"
require "language/go"
require 'erb'


class PachctlAT22 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.2.0/pachctl_2.2.0_darwin_amd64.zip"
  sha256 "c773539d3c093d50b8d5199e17280e46cdd6955023f7ed1166afe98f7f8f3887"
  version "v2.2.0"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
