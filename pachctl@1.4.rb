require "formula"
require "language/go"
require 'erb'


class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.8/pachctl_1.4.8_darwin_amd64.zip"
  sha256 "0af641a28713bcea2b656fdeebabc284b3ccb10229a0e202ec9792a15404ff3c"
  version "v1.4.8"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
