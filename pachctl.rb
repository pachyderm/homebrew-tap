require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.2.2/pachctl_1.2.2_darwin_amd64.zip"
  sha256 "1c0299600ff5c34071d6006756e40e91e88886781b9e48b5ac914aaf6effb0db"
  version "v1.2.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
