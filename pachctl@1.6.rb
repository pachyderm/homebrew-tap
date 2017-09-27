require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.01.6.0rc7/pachctl_1.6.01.6.0rc7_darwin_amd64.zip"
  sha256 "8f1559b0100651ea099b32d7cde2773c2fbbdeeed0e0340bd3a8562dc6f1efd7"
  version "v1.6.01.6.0rc7"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
