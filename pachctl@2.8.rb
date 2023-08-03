require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-nightly.20230803"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230803/pachctl_2.8.0-nightly.20230803_darwin_amd64.zip"
    sha256 "db8cd43a2bfe413817fa30cb24f538a07a96652929a65e7a0feb78e658fdb59e"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230803/pachctl_2.8.0-nightly.20230803_darwin_arm64.zip"
    sha256 "423e4fe74508fddafa5529e66dea1530ef82012869971fde48df5e8843b418aa"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
