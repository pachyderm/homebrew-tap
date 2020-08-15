require "formula"
require "language/go"
require 'erb'


class PachctlAT111 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.11.2/pachctl_1.11.2_darwin_amd64.zip"
  sha256 "a176ea78464bbdc856f9a0b037a4b9ed1f03130e4cdc39f9d3ff32e9ac4b7e7f"
  version "v1.11.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
