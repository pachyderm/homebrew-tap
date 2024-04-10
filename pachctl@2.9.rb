require "formula"
require "language/go"
require "erb"

class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.4"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.4/pachctl_2.9.4_darwin_arm64.zip"
      sha256 "935c0c60c67ae2d743100077bb8feec517b5a879f70e2b9409e026b4dec16f13"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.4/pachctl_2.9.4_darwin_amd64.zip"
      sha256 "015d000885493ae873db180f6dbae580e9fb9640f68b4b55216a36fd52d7a63e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.4/pachctl_2.9.4_linux_arm64.tar.gz"
      sha256 "f0c103ee91d70ba664f572c0112dd73e31a1f10acd4f97d4bd61bea930d75020"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.4/pachctl_2.9.4_linux_amd64.tar.gz"
      sha256 "0651ef7cba5cc1d6ecae679a57c2c3e767afe83403375161d29ce34662528ed8"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
