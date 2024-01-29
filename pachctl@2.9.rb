require "formula"
require "language/go"
require 'erb'


class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.0-nightly.20240129"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20240129/pachctl_2.9.0-nightly.20240129_darwin_amd64.zip"
    sha256 "026993e7bc3adda127261948b2db395076f656fa8d2091998dc1b53b63c4896a"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20240129/pachctl_2.9.0-nightly.20240129_darwin_arm64.zip"
    sha256 "5dda5bd157ca464a96776f9ca2b947ea1ee597fa6fc69dd6da978dfdd8d545de"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
