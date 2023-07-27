require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-rc.1"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-rc.1/pachctl_2.7.0-rc.1_darwin_amd64.zip"
    sha256 "9530f46682bc044c5fa1997650bfcea2e89e2431e06c33df1f4b91236c6b08ef"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-rc.1/pachctl_2.7.0-rc.1_darwin_arm64.zip"
    sha256 "4c7e83e1732d505409edfbb24094b476b876fbfcbf80c0a895c4456c09f09bc2"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
