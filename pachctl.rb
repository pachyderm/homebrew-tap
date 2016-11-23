require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.2.4/pachctl_1.2.4_darwin_amd64.zip"
  sha256 "7c7cb976cf849138f607bb1c737382716b779a9e764abb583ab3b6e343c20384"
  version "v1.2.4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
