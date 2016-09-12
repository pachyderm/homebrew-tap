require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.2.0-RCX2/pachctl_1.2.0-RCX2_darwin_amd64.zip"
  sha256 "a13750d28b4c126208e9872ef3093638969f5ca3b63974db21fc47a46f8a6afb"
  version "v1.2.0-RCX2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
