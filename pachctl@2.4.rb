require "formula"
require "language/go"
require 'erb'


class PachctlAT24 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.2"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.2/pachctl_2.4.2_darwin_amd64.zip"
    sha256 "e1c869c1fb969c56d9653e0bae8c22e87fb1ee7d9604afd9cbe305b780b2e4af"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.2/pachctl_2.4.2_darwin_arm64.zip"
    sha256 "0320ef9f12efd4995d6e859b7ec5b0be2a54168dcede85ff07bc616525b66554"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
