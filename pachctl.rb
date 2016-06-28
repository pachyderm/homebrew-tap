require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.0.1-RCX15/pachctl_1.0.1-RCX15_darwin_amd64.zip"
  sha256 "1f770f10f33b72030418bc33cbd1f4f6e5d37bfdd98bf534e622962b0de890a1"
  version "v1.0.1-RCX15"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
