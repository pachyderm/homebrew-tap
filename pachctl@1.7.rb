require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.5/pachctl_1.7.5_darwin_amd64.zip"
  sha256 "789271ff0a8c0c2556cec2d544ff00682f40edd5288f04e50f705a07778b9588"
  version "v1.7.5"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
