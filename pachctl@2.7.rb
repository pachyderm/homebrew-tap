require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230713"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230713/pachctl_2.7.0-nightly.20230713_darwin_amd64.zip"
    sha256 "d1df4bbcd5cf705d819024263316b85a5e8695afa3e099206162f4f9b33ed001"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230713/pachctl_2.7.0-nightly.20230713_darwin_arm64.zip"
    sha256 "b22a5864c7d6684778f6ba5253cac864f0aebd445b2ad8b0339f4e110835ce8d"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
