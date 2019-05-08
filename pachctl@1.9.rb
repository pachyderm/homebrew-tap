require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.0rc2/pachctl_1.9.0rc2_darwin_amd64.zip"
  sha256 "9a6fde7e5301ed27730294544ae48eecc44db07ace113be23338f903f9625f96"
  version "v1.9.0rc2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
