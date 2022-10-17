require "formula"
require "language/go"
require 'erb'


class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.3.6-278239f8de6f1050b0a84dad565e61ae30e703a7"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.6-278239f8de6f1050b0a84dad565e61ae30e703a7/pachctl_2.3.6-278239f8de6f1050b0a84dad565e61ae30e703a7_darwin_amd64.zip"
    sha256 "92a01e4bdb8d500f29f25bc47ab68cc4bced0917e0b5499d1d3b08b98e162101"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.6-278239f8de6f1050b0a84dad565e61ae30e703a7/pachctl_2.3.6-278239f8de6f1050b0a84dad565e61ae30e703a7_darwin_arm64.zip"
    sha256 "02d12b2d64d60a8dd622357a567acf55ec9c5f181ff0ab37efca4987c9adef4b"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
