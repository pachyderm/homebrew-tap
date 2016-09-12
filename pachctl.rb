require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.2.0-RCX3/pachctl_1.2.0-RCX3_darwin_amd64.zip"
  sha256 "4a6aa8d56308c65d2c95049297f5140f8adcfe807a1bbad73b4dd24a90718820"
  version "v1.2.0-RCX3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
