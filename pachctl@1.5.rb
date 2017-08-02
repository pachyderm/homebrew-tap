require "formula"
require "language/go"
require 'erb'


class PachctlAT15 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.5.1/pachctl_1.5.1_darwin_amd64.zip"
  sha256 "c6f1cc22b602d26422bd9a15c6461fb65b617bdeb7485e76e9df2a9424ae399e"
  version "v1.5.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
