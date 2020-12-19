require "formula"
require "language/go"
require 'erb'


class PachctlAT112 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.12.0-rc3/pachctl_1.12.0-rc3_darwin_amd64.zip"
  sha256 "35d7fb9797a39c91c70c6fea8d058a45d1868e2f5df0821d8a7901118958ea84"
  version "v1.12.0-rc3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
