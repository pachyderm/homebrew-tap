require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.7-55a0b40eb00a5d33122a7f4db2670b48ffba9a94/pachctl_1.9.7-55a0b40eb00a5d33122a7f4db2670b48ffba9a94_darwin_amd64.zip"
  sha256 "76120671a4102bfd7a710c3ecbccaf80094e350c34a9a922d66e853f74ef94a6"
  version "v1.9.7-55a0b40eb00a5d33122a7f4db2670b48ffba9a94"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
