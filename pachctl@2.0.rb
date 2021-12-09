require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.3-a08eacc5d6aa754b7f671642412c89883164c80a/pachctl_2.0.3-a08eacc5d6aa754b7f671642412c89883164c80a_darwin_amd64.zip"
  sha256 "7b2e97b06ffba5c8199f58ae95afd5bbd9dcbf036f6b02ddccef0dadb4b58838"
  version "v2.0.3-a08eacc5d6aa754b7f671642412c89883164c80a"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
