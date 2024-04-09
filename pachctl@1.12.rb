require "formula"
require "language/go"
require 'erb'


class PachctlAT112 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.12.5/pachctl_1.12.5_darwin_amd64.zip"
  sha256 "2fbe59b5d2c32a3b1adb46819d173c768caef1ad1a46f745630dc4c79c425d7d"
  version "v1.12.5"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
