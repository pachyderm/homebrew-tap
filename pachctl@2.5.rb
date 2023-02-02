require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-rc.1"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-rc.1/pachctl_2.5.0-rc.1_darwin_amd64.zip"
    sha256 "651f8a9f6b714414f8533d1d1b443975134173f21d2b70e72b8d393ceb3f2ec3"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-rc.1/pachctl_2.5.0-rc.1_darwin_arm64.zip"
    sha256 "203290c330d3b0c275784e293e8abfc064e54d352719f81055565190eca8062f"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
