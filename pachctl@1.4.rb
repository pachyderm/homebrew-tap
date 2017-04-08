require "formula"
require "language/go"
require 'erb'


class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.3/pachctl_1.4.3_darwin_amd64.zip"
  sha256 "6593303704d1794ae767db26eb50d6e378735db77a9271010ca416fdc6f61585"
  version "v1.4.3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
