require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.2.0-RC2/pachctl_1.2.0-RC2_darwin_amd64.zip"
  sha256 "d64b6671c74229276efdf7bd8876eda8f110d54d97bd43b8204ad2276f4fdbfd"
  version "v1.2.0-RC2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
