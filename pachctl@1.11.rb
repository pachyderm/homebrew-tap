require "formula"
require "language/go"
require 'erb'


class PachctlAT111 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.11.0-sentry2/pachctl_1.11.0-sentry2_darwin_amd64.zip"
  sha256 "04d643912e6df4e8ee3b339021393fb74bd3876022e299e4cd4cd13b9824c71c"
  version "v1.11.0-sentry2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
