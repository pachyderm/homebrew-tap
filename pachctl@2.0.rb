require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.12/pachctl_2.0.0-alpha.12_darwin_amd64.zip"
  sha256 "4cb58001c47c503dccb9fb5e57658c3e34d06fa8cf8c7a7e21a4d89cf25c1a0c"
  version "v2.0.0-alpha.12"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
