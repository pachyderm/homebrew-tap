require "formula"
require "language/go"
require 'erb'


class PachctlAT113 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.13.0-rc.2/pachctl_1.13.0-rc.2_darwin_amd64.zip"
  sha256 "11507501f303703d5536573b195db36c4698591eaf9b10595cf9a8b9831d1c22"
  version "v1.13.0-rc.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
