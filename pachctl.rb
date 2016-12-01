require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.2.6/pachctl_1.2.6_darwin_amd64.zip"
  sha256 "0af25085ba417d054fbad29791b4d52d6ba28a6a863aaf54b68a9eb57e1bff1d"
  version "v1.2.6"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
