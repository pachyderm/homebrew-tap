require "formula"
require "language/go"
require 'erb'


class PachctlAT111 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.11.0/pachctl_1.11.0_darwin_amd64.zip"
  sha256 "a73cb894e71e5fa539b40fdd5745c326236f18dfe815f724980318e03406cb52"
  version "v1.11.0"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
