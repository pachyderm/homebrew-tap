require "formula"
require "language/go"
require 'erb'


class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.0-nightly.20230505"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230505/pachctl_2.6.0-nightly.20230505_darwin_amd64.zip"
    sha256 "ec63f7f02471d7db4356b0027890527cd7db3454c55cf4ca3a0746c6932a266d"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230505/pachctl_2.6.0-nightly.20230505_darwin_arm64.zip"
    sha256 "dc911e3cd783dda91e66cf0055522430136cbd03fa7fe56d5d21a36f3597ab4f"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
