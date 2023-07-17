require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230717"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230717/pachctl_2.7.0-nightly.20230717_darwin_amd64.zip"
    sha256 "e21ed9724b64a38f9a7cf4dbe525c6f52b0efe61bb36f7daf1d8387b90e6238f"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230717/pachctl_2.7.0-nightly.20230717_darwin_arm64.zip"
    sha256 "8fbb953fe7618e2561a98e3880d90a31624495db657f285b9b2993bb7228134b"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
