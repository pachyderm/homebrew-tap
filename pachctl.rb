require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v0.0.99999/pachctl_0.0.99999_darwin_amd64.zip"
  sha256 "45419c0e0f0ffab1a7c324f09263baf72e49430e7ebb9f8f0d15d5d76e00ada3"
  version "v0.0.99999"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
