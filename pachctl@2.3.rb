require "formula"
require "language/go"
require 'erb'


class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.3.0-alpha.7"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0-alpha.7/pachctl_2.3.0-alpha.7_darwin_amd64.zip"
    sha256 "802c7b8c4c2479437105a6ed8faaf702993fa716e60d827702e1c82c930a20bb"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0-alpha.7/pachctl_2.3.0-alpha.7_darwin_arm64.zip"
    sha256 "69a7e222f3dcbe8e75a29a9750d2648d67a9ed782a0c1c5c44c6c5fb4860f24e"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
