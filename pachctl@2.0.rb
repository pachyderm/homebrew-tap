require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-beta.4/pachctl_2.0.0-beta.4_darwin_amd64.zip"
  sha256 "dcc642e0bdb8c29b0c868a0e8ab8a46155d8ab35564f652050596a10086fc08d"
  version "v2.0.0-beta.4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
