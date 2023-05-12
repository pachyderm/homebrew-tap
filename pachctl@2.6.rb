require "formula"
require "language/go"
require 'erb'


class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.0-nightly.20230512"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230512/pachctl_2.6.0-nightly.20230512_darwin_amd64.zip"
    sha256 "ebf626b9a232032f825167e6adce82bfb0ba2ab38b09ca74a557f197e1cace19"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230512/pachctl_2.6.0-nightly.20230512_darwin_arm64.zip"
    sha256 "56304f07e1a7435368a06edeaf5c7f893a3aa3b542d1e223a540d9d9eb18389f"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
