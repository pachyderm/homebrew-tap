require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.5-2f77c690f67aa4b3939d64e2aa74a138d9e68fcb/pachctl_2.1.5-2f77c690f67aa4b3939d64e2aa74a138d9e68fcb_darwin_amd64.zip"
  sha256 "93ed70e154d67644389907ddf3845b2e9ab4e89ac751b60b1972a28717e5dac1"
  version "v2.1.5-2f77c690f67aa4b3939d64e2aa74a138d9e68fcb"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
