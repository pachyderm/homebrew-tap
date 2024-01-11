require "formula"
require "language/go"
require 'erb'


class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.0-nightly.20240111"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20240111/pachctl_2.9.0-nightly.20240111_darwin_amd64.zip"
    sha256 "29580ee98928fdbbd780834977f3aef38dfcc2aba0358f3ac19392b4b8a9c753"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20240111/pachctl_2.9.0-nightly.20240111_darwin_arm64.zip"
    sha256 "34c7c9140af1c319d66fdd966d8d32e253deb487d60d9a08ec525681d69f1f7f"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
