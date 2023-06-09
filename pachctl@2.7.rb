require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230609"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230609/pachctl_2.7.0-nightly.20230609_darwin_amd64.zip"
    sha256 "a0209d25e40b34f4cde6f9cc70109a59726c9de02dbb06d3923584832b6dcb08"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230609/pachctl_2.7.0-nightly.20230609_darwin_arm64.zip"
    sha256 "8677c70dad9f1a3bda8c2faecfd742b662df08bb7300aa2b06f180cde290f169"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
