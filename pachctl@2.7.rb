require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-alpha.4"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-alpha.4/pachctl_2.7.0-alpha.4_darwin_amd64.zip"
    sha256 "a4917e69ffbe1054b5f4d94247bb8d6e69868b87ba9a705d9fdd0ebb54f33c7a"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-alpha.4/pachctl_2.7.0-alpha.4_darwin_arm64.zip"
    sha256 "fc04e1dd7599bf098a884fac21aef9d0a4020a45cc15c36853e030f7f3a38185"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
