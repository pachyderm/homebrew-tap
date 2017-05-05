require "formula"
require "language/go"
require 'erb'


class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.6-94ac54e294ea37a557597814d52a853f85b0e79b/pachctl_1.4.6-94ac54e294ea37a557597814d52a853f85b0e79b_darwin_amd64.zip"
  sha256 "b276a6cb6ce407790209257b76d05f1b70f6a8a2068a7058842ff544cc1d6e19"
  version "v1.4.6-94ac54e294ea37a557597814d52a853f85b0e79b"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
