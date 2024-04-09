require "formula"
require "language/go"
require 'erb'


class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.3.9"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.9/pachctl_2.3.9_darwin_amd64.zip"
    sha256 "921e1ddd733b74cc354e5be7e83c4589af817ab66ccafbd64de8eb36f144523b"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.9/pachctl_2.3.9_darwin_arm64.zip"
    sha256 "53b49ebda9168249975f3a433d35dc5405372fdcb6ec738ab5e8d2a1f4122c99"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
