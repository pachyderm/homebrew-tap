require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.7-76d2e4a89bdc66b41dec924324bc6dc32c377711/pachctl_1.9.7-76d2e4a89bdc66b41dec924324bc6dc32c377711_darwin_amd64.zip"
  sha256 "4a595887f0f33793cd6f0162152decc16c094549d188d470db9caa740901db9f"
  version "v1.9.7-76d2e4a89bdc66b41dec924324bc6dc32c377711"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
