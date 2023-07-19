require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230719"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230719/pachctl_2.7.0-nightly.20230719_darwin_amd64.zip"
    sha256 "d98fd05f3f8dbbc602b1c6411aa0be2ed46150773a28e0898f67d77121dd35b6"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230719/pachctl_2.7.0-nightly.20230719_darwin_arm64.zip"
    sha256 "4a6de4fdd42f396eca5a3c231c62ffcbfee4e45e18911ae95b53743953cfda0e"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
