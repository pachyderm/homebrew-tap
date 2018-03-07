require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.0-bdb445850f3f864bad25b100194b764bc406d4fd/pachctl_1.7.0-bdb445850f3f864bad25b100194b764bc406d4fd_darwin_amd64.zip"
  sha256 "9c335c0998a155d32eb819b94b0105696efbe6be02afe943bb0dffca057927c3"
  version "v1.7.0-bdb445850f3f864bad25b100194b764bc406d4fd"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
