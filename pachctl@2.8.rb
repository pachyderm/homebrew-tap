require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-nightly.20230808"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230808/pachctl_2.8.0-nightly.20230808_darwin_amd64.zip"
    sha256 "05a386df8f5d750e6e0f23b6d89e418684259e879a9f703cb0dfa8db38e170d6"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230808/pachctl_2.8.0-nightly.20230808_darwin_arm64.zip"
    sha256 "a192ecbdc6bb66907994c596fe6ea05daa8d37b92b7b8a48e8d55db09df55377"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
