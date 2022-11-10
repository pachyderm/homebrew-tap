require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-nightly.20221110"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221110/pachctl_2.5.0-nightly.20221110_darwin_amd64.zip"
    sha256 "b204ace3fb92cc08fb9293bbca1c0115301fb4f57b782abebd5b6fa6c5a5ee19"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221110/pachctl_2.5.0-nightly.20221110_darwin_arm64.zip"
    sha256 "ac5c06fc46fdca9f5bea78e4d07f3781f47775a76d2cc50e47197dd2dab3afc9"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
