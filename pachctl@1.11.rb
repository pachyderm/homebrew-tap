require "formula"
require "language/go"
require 'erb'


class PachctlAT111 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.11.5/pachctl_1.11.5_darwin_amd64.zip"
  sha256 "34e264ba4a9b1af11ca43ab1b1f11a210077fb52208f35825d96d61781852499"
  version "v1.11.5"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
