require "formula"
require "language/go"
require 'erb'


class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.0-nightly.20231228"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20231228/pachctl_2.9.0-nightly.20231228_darwin_amd64.zip"
    sha256 "39020264b4970d74bda4346bb7eac0863fb5b255043e00d969752ea4c4b640eb"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20231228/pachctl_2.9.0-nightly.20231228_darwin_arm64.zip"
    sha256 "9847bc9f4a4b2ee9ddfd50e9192aa24d8dc825e5775015bcef6efac6ee9cf75f"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
