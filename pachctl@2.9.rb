require "formula"
require "language/go"
require 'erb'


class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.0-nightly.20240104"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20240104/pachctl_2.9.0-nightly.20240104_darwin_amd64.zip"
    sha256 "a59d2fd1467b702075557fc8e74664fa32837d93703e9b8025b845776db2bdd5"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20240104/pachctl_2.9.0-nightly.20240104_darwin_arm64.zip"
    sha256 "a654b6a1b2971d5b69d9d982acc4cebc7a59e32e20b3e51b012b23c910cb44a8"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
