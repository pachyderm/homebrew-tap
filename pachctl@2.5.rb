require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.4"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.4/pachctl_2.5.4_darwin_amd64.zip"
    sha256 "f3a999787b7444c03e7fa976c71c827502679365d71e47cf46c1c0a6cfd382ce"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.4/pachctl_2.5.4_darwin_arm64.zip"
    sha256 "fd6018e14a18f50803860efff32e1f58c6042b77ff807084c8ad9762e2686eae"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
