require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.4-no-gpu-01/pachctl_1.6.4-no-gpu-01_darwin_amd64.zip"
  sha256 "6d05958c66ca460be4fd0febc305827ce122a6b52435a29ab4fdba1e224408ec"
  version "v1.6.4-no-gpu-01"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
