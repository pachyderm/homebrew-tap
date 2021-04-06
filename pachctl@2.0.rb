require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.11/pachctl_2.0.0-alpha.11_darwin_amd64.zip"
  sha256 "5973b44232a782cea8c47f22caa368620e35630d7f88360c34692928b0966c95"
  version "v2.0.0-alpha.11"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
