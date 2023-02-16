require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.6"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.6/pachctl_2.4.6_darwin_amd64.zip"
    sha256 "6e3459588c2d57a4aefcc166f9a8da31e177bdbb56aab3e2ec1fc5406c6b8080"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.6/pachctl_2.4.6_darwin_arm64.zip"
    sha256 "1e0c98acc9ad7c8cc4f80c2344fe7bfee0b5dc532c8a861a349c25520143c378"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
