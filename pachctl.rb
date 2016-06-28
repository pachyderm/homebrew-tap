require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.0.1-RCX13/pachctl_1.0.1-RCX13_darwin_amd64.zip"
  sha256 "9abebd860edba70fd9d77482f00a94b7e28fb2991bb9ef8ca2c599f5147f5e25"
  version "v1.0.1-RCX13"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
