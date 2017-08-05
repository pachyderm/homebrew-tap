require "formula"
require "language/go"
require 'erb'


class PachctlAT15 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.5.2/pachctl_1.5.2_darwin_amd64.zip"
  sha256 "e391ed32c765f37060fe0fe9fe1fdf5dfb64235a3790f0383b2196b6ecc873c1"
  version "v1.5.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
