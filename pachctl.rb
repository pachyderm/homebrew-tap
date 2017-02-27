require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.9/pachctl_1.3.9_darwin_amd64.zip"
  sha256 "69592706741e1a072c5f5fb85ed74a9a3464fd6b2ec636bcf8061d2fb917f502"
  version "v1.3.9"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
