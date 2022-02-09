require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.0-rc.1/pachctl_2.1.0-rc.1_darwin_amd64.zip"
  sha256 "b35cd32bf2334f48755be0e39f5fd632a30a67755df40140cbd5bfe6396df822"
  version "v2.1.0-rc.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
