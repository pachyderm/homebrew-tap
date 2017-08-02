require "formula"
require "language/go"
require 'erb'


class PachctlAT15 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.5.1/pachctl_1.5.1_darwin_amd64.zip"
  sha256 "d4cf46c44494fd3d9fc64f56062acb118ac1a12113cfbdaeb88a11bf26a7024d"
  version "v1.5.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
