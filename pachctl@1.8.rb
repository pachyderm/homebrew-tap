require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.2-56c785da08c5d1713eef8ac0ca269b102bfcabd3/pachctl_1.8.2-56c785da08c5d1713eef8ac0ca269b102bfcabd3_darwin_amd64.zip"
  sha256 "66db1afb6bc8e2400a33b9586e756de81571f9d9c27d2c2ebe21c9408f777f6d"
  version "v1.8.2-56c785da08c5d1713eef8ac0ca269b102bfcabd3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
