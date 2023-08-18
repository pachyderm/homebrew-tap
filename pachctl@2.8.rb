require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-nightly.20230818"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230818/pachctl_2.8.0-nightly.20230818_darwin_amd64.zip"
    sha256 "ee0d44a8717e618573e6e7e74347d329f9abd6c39a5e718cbdd3833c35e86c92"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230818/pachctl_2.8.0-nightly.20230818_darwin_arm64.zip"
    sha256 "42dd2d22a00ddf0ee014ff6cf357349a0abbab1b97244f8a7e5d0a177643141d"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
