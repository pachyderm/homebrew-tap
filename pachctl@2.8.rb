require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-alpha.4"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-alpha.4/pachctl_2.8.0-alpha.4_darwin_amd64.zip"
    sha256 "dd28a17990ba21e9fb2280c2f8755c68ee2fed6741952bb4b2d2dea03f304f90"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-alpha.4/pachctl_2.8.0-alpha.4_darwin_arm64.zip"
    sha256 "01ea8f9ad86889e9dafeff434d85a09d0241ed390ecee83676ed0d7c4f4b6778"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
