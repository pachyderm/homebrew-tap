require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.6"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.6/pachctl_2.5.6_darwin_amd64.zip"
    sha256 "a76215fabb031136bcf19d5ab297b260e6bb1b7b96e184edc3ceb794d6191ca9"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.6/pachctl_2.5.6_darwin_arm64.zip"
    sha256 "a4cab553df8baa40d79e7c0c689c966aa68c4d0fedaea6a90aa8b3199b9770d6"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
