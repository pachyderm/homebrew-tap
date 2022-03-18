require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.4-f53011bf7649f679fbf8a3383e6baade0c8203f1/pachctl_2.1.4-f53011bf7649f679fbf8a3383e6baade0c8203f1_darwin_amd64.zip"
  sha256 "6a495b10ba04d7a33cc23f2b1c3a2504b5d7e1a63e6849d95ff677c710a07d21"
  version "v2.1.4-f53011bf7649f679fbf8a3383e6baade0c8203f1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
