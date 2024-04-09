require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.9/pachctl_2.1.9_darwin_amd64.zip"
  sha256 "632d6dfc84e5b63307aba58f24fcd3a5fede33849a71e8f26b424b874d64dd15"
  version "v2.1.9"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
