require "formula"
require "language/go"
require 'erb'


class PachctlAT111 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.11.0-sentry1/pachctl_1.11.0-sentry1_darwin_amd64.zip"
  sha256 "f4c44c4d0611f338c8a4c43c9146c38111344d0c1974810494cce206beef46bb"
  version "v1.11.0-sentry1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
