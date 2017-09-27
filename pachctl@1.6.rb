require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.0rc7/pachctl_1.6.0rc7_darwin_amd64.zip"
  sha256 "6350a2808a038287716e5d927846e071f11dcef8ae85f8a3b195ec071a5291d4"
  version "v1.6.0rc7"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
