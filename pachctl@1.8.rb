require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.2-3d440134bca6a690643f64911242930cca174a48/pachctl_1.8.2-3d440134bca6a690643f64911242930cca174a48_darwin_amd64.zip"
  sha256 "f9fce4b791f8ff28a07e057f22d668cceee896074a98bbfb5ecedeeade0d3bc2"
  version "v1.8.2-3d440134bca6a690643f64911242930cca174a48"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
