require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.5/pachctl_1.6.5_darwin_amd64.zip"
  sha256 "5adec59c0545c35f75aa486418e6187c05e5e775499f64be93cf8bf69b50c9d2"
  version "v1.6.5"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
