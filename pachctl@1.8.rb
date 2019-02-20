require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.5/pachctl_1.8.5_darwin_amd64.zip"
  sha256 "3bfd5a9c3fd0f14e987ad1b2fd54ef3a4162c33826c56b205d5e66216be3f1ce"
  version "v1.8.5"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
