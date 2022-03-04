require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.3/pachctl_2.1.3_darwin_amd64.zip"
  sha256 "ca46557706fc4af17e0cac917587ee27e8f01f32885b617f574538e5eb605a55"
  version "v2.1.3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
