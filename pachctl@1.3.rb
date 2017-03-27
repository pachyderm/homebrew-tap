require "formula"
require "language/go"
require 'erb'


class PachctlAT13 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.17/pachctl_1.3.17_darwin_amd64.zip"
  sha256 "1752567c77cd8dbdd1ba4c242bb7403b686c8e5c08593c938dd69db530683f2e"
  version "v1.3.17"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
