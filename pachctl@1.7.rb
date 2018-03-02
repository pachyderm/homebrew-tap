require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.0-custom-02032018/pachctl_1.7.0-custom-02032018_darwin_amd64.zip"
  sha256 "05e9ad4e4484c70212f813f4e32bf4ebbbc5ad58e879c71dc86165484ce140db"
  version "v1.7.0-custom-02032018"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
