require "formula"
require "language/go"
require 'erb'


class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.0-nightly.20240112"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20240112/pachctl_2.9.0-nightly.20240112_darwin_amd64.zip"
    sha256 "37ec5fe9761b97c5721abf220f7dfd7a0e91ba23efc5a0efa349fbae22490d5d"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20240112/pachctl_2.9.0-nightly.20240112_darwin_arm64.zip"
    sha256 "3c0b42b77d4161fee72567c7e5b89666473b785bbffdfc9fe2e3c1449d40b4ac"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
