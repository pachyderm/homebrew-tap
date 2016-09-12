require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.1.0-RC1/pachctl_1.1.0-RC1_darwin_amd64.zip"
  sha256 "ae82ebb4a7ccbf8df8adcd70698964cc1706d5246975b92dc54440981f2eca91"
  version "v1.1.0-RC1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
