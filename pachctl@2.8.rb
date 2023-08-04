require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-nightly.20230804"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230804/pachctl_2.8.0-nightly.20230804_darwin_amd64.zip"
    sha256 "f59aec2a9687e44431576926089778a2d4f2a8aabf7af1b8fc297992c2d426fd"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230804/pachctl_2.8.0-nightly.20230804_darwin_arm64.zip"
    sha256 "14f735377a41bfb9e84dcbec346fdbff1273a95e344a22af7e8c7e1114e94be4"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
