require "formula"
require "language/go"
require 'erb'


class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.2"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.2/pachctl_2.6.2_darwin_amd64.zip"
    sha256 "c3868614b81b116c7928eeef1188f407f91054e5d189e59bac30814b0c43e3f9"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.2/pachctl_2.6.2_darwin_arm64.zip"
    sha256 "f239304e5f965d24441fa9127c111bfdfee14f4f9378b1beca2f0fa792c6516a"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
