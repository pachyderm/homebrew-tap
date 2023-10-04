require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.4"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.4/pachctl_2.7.4_darwin_amd64.zip"
    sha256 "b6f00211dba68b568897d87ca8b9b0316be727e9d7b1d9d75032feef6cb5ae00"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.4/pachctl_2.7.4_darwin_arm64.zip"
    sha256 "0dd90582f5e8e60f5f2a6f79cd7f556b2685f35bf2a520db41dd236b08833abe"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
