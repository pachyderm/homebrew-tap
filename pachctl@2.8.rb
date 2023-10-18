require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-alpha.5"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-alpha.5/pachctl_2.8.0-alpha.5_darwin_amd64.zip"
    sha256 "f43bd533c28a7efa9cae806ed2209da8fe088ab07b8b96205af846a3c3ed02bf"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-alpha.5/pachctl_2.8.0-alpha.5_darwin_arm64.zip"
    sha256 "90dce4816423f905f33d5f9e1860938011d68975ab1014ed72b21f61308385b5"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
