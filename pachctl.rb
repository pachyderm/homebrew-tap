require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.2.3/pachctl_1.2.3_darwin_amd64.zip"
  sha256 "58228401301306bb04bbcd7f98ce665e24ee2402f363bd35ff976bf2b3e9e2a7"
  version "v1.2.3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
