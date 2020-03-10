require "formula"
require "language/go"
require 'erb'


class PachctlAT110 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.10.0-rc5/pachctl_1.10.0-rc5_darwin_amd64.zip"
  sha256 "511a9b0f7e29304a2934664bacbc75bf5a3d9e86644787bdac59e976f3f0e7ea"
  version "v1.10.0-rc5"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
