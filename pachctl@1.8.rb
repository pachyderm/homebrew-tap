require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.5-3b15373481111ab338f03c171679c591965b3f3b/pachctl_1.8.5-3b15373481111ab338f03c171679c591965b3f3b_darwin_amd64.zip"
  sha256 "e0eb07974f1c23280c21ae1024bfd4c92c5606f07366664c040e8568a7ac19cc"
  version "v1.8.5-3b15373481111ab338f03c171679c591965b3f3b"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
