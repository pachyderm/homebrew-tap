require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.6/pachctl_2.1.6_darwin_amd64.zip"
  sha256 "c218f40f34e4c72035a3a918dc389069dbecf84547d759b6aad088b7964b932a"
  version "v2.1.6"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
