require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-rc.1/pachctl_2.0.0-rc.1_darwin_amd64.zip"
  sha256 "03c82ecd33b2925481665176fbb7e7d35ee6387434895cb3e0d6ee1c09a5bee7"
  version "v2.0.0-rc.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
