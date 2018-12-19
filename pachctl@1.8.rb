require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.1/pachctl_1.8.1_darwin_amd64.zip"
  sha256 "44494652fef9258e5e868c16dbd004e04d1bb929f7cab55fdce4983b87cc056b"
  version "v1.8.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
