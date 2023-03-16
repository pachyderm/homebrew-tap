require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.2"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.2/pachctl_2.5.2_darwin_amd64.zip"
    sha256 "76374e371a07da8e2a67feedf6a564bdab9c16b89d4c39580b84dacf40e40c6f"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.2/pachctl_2.5.2_darwin_arm64.zip"
    sha256 "f2a91c082b54dc560eccb539acd752261a6e4f01dfc876538a5c008ed781cad1"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
