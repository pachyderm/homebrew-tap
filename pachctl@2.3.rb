require "formula"
require "language/go"
require 'erb'


class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.3.0-alpha.4"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0-alpha.4/pachctl_2.3.0-alpha.4_darwin_amd64.zip"
    sha256 "f08fbac94c8bd7880ee85e646930ea354ec6e2fe21e8dd9b47d50841e52a869f"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0-alpha.4/pachctl_2.3.0-alpha.4_darwin_arm64.zip"
    sha256 "7f917c7efe25e0ed9999df6a07087a098d79ec58bb2b08ae38e5bbb6c905001a"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
