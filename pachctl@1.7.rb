require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.0rc3/pachctl_1.7.0rc3_darwin_amd64.zip"
  sha256 "5bff4d79b9df896a64a90e6686d2703d7816acb064da444e33ca70e43a567cbe"
  version "v1.7.0rc3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
