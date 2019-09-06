require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.4/pachctl_1.9.4_darwin_amd64.zip"
  sha256 "abaaa930600ed2603ce37375b0b50c79b35e67999fff78c112ee1650364b2639"
  version "v1.9.4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
