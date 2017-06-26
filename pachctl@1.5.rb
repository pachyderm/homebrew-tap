require "formula"
require "language/go"
require 'erb'


class PachctlAT15 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.5.0-RC1/pachctl_1.5.0-RC1_darwin_amd64.zip"
  sha256 "6fb57ac4d8b8a2fc74bb42a578e3a965b37b46e302b8537819b6c57d979e2634"
  version "v1.5.0-RC1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
