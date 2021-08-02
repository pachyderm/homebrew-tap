require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-beta.5/pachctl_2.0.0-beta.5_darwin_amd64.zip"
  sha256 "07f6c3adae0ba7f8f924c0840cf1d24787220b43db0f3860e0d0c8bce15b08d2"
  version "v2.0.0-beta.5"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
