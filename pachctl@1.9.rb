require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.5/pachctl_1.9.5_darwin_amd64.zip"
  sha256 "4acb1bbe7b342b477c93de4ec2a0238c59364527364f24c046c5e92c535d7111"
  version "v1.9.5"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
