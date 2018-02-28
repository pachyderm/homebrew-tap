require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.0rc2/pachctl_1.7.0rc2_darwin_amd64.zip"
  sha256 "4aa565a6ec2a1d16834797c24051a93a0554e8af7163a1e1a30934a620658985"
  version "v1.7.0rc2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
