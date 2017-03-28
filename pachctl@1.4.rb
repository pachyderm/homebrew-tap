require "formula"
require "language/go"
require 'erb'


class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.0/pachctl_1.4.0_darwin_amd64.zip"
  sha256 "471488df53abb5da0e0f31c33bcc2a2ed3b4f9fdf78fca13044fef599da36f48"
  version "v1.4.0"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
