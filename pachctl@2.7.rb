require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230621"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230621/pachctl_2.7.0-nightly.20230621_darwin_amd64.zip"
    sha256 "af866f1e6d969cd9327fd74d723de84fbbf1422feb12d60adc55aad11382a264"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230621/pachctl_2.7.0-nightly.20230621_darwin_arm64.zip"
    sha256 "91cef8c9a5c8a1db6f636d784e7355df5bf6d5cef1ad6af8fc536118cc87229f"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
