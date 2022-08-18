require "formula"
require "language/go"
require 'erb'


class PachctlAT22 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.2.8"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.2.8/pachctl_2.2.8_darwin_amd64.zip"
    sha256 "c5c887a3cf41a5e12671604299abe48c89a98d6fde05e25dd441281af80de5df"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.2.8/pachctl_2.2.8_darwin_amd64.zip"
    sha256 "c5c887a3cf41a5e12671604299abe48c89a98d6fde05e25dd441281af80de5df"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
