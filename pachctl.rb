require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.0.1-RCX25/pachctl_1.0.1-RCX25_darwin_amd64.zip"
  sha256 "dd17d8f82bc15860e877e7b75f47dd5debea3915b1b199c2de6913362f319517"
  version "v1.0.1-RCX25"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
