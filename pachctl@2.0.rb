require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-beta.3/pachctl_2.0.0-beta.3_darwin_amd64.zip"
  sha256 "19d8ee012cd670fedef06997ba59c665e8ab8f330793f05c06ce037f1af5f1c1"
  version "v2.0.0-beta.3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
