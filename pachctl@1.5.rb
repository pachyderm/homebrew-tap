require "formula"
require "language/go"
require 'erb'


class PachctlAT15 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.5.1/pachctl_1.5.1_darwin_amd64.zip"
  sha256 "e5304ae3802086b09667c438c7d6f61b4a252a49bc78c55039050e0806332fa5"
  version "v1.5.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
