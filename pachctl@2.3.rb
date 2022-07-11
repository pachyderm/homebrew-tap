require "formula"
require "language/go"
require 'erb'


class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.3.0-alpha.1"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0-alpha.1/pachctl_2.3.0-alpha.1_darwin_amd64.zip"
    sha256 "083a09b55ba81e68d8ce1e07336427f9a56b95a5b4fe8a4b972c5896ae2f3391"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0-alpha.1/pachctl_2.3.0-alpha.1_darwin_arm64.zip"
    sha256 "03dd358f8f348de8261da010b70de0690fcb8b2eb6d1e7090876bb6a309295ea"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
