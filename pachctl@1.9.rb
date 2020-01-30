require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.11-63c34d2a5f789db3e98454e37fecebbcae7ae0ca/pachctl_1.9.11-63c34d2a5f789db3e98454e37fecebbcae7ae0ca_darwin_amd64.zip"
  sha256 "021b6d7fa58ad2ceaec787dfac144d9623d307758e14efa76b8cce24732ff278"
  version "v1.9.11-63c34d2a5f789db3e98454e37fecebbcae7ae0ca"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
