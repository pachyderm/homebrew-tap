require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.0rc1/pachctl_1.7.0rc1_darwin_amd64.zip"
  sha256 "6865c3adb299a8db98b58d9e246b7913b642fc15245451d534c182b3e7804239"
  version "v1.7.0rc1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
