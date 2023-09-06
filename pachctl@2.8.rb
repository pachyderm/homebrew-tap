require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-alpha.2"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-alpha.2/pachctl_2.8.0-alpha.2_darwin_amd64.zip"
    sha256 "9d8b9ccfae3352104fed039471af433d58a607741e4804a0a4d95fb09b12437d"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-alpha.2/pachctl_2.8.0-alpha.2_darwin_arm64.zip"
    sha256 "3561744a7cba7f09343b9f596cf89140fba2fe06669c8c2b81b47e7efb675100"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
