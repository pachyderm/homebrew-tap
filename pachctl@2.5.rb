require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-nightly.20221114"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221114/pachctl_2.5.0-nightly.20221114_darwin_amd64.zip"
    sha256 "5054c92e11232cf1e660e520616b97b3f9d2ab2bf3c124da8d61c591389682a7"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221114/pachctl_2.5.0-nightly.20221114_darwin_arm64.zip"
    sha256 "e35436f9d79c25b3863d2f0ee099590d253c57d09a8609a85e046d5e219b454a"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
