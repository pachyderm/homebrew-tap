require "formula"
require "language/go"
require 'erb'


class PachctlAT110 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.10.2/pachctl_1.10.2_darwin_amd64.zip"
  sha256 "19c8f96c303ba71c9a256477433272208723e6efe18ab3abcde8f7756a65cdf3"
  version "v1.10.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
