require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.3/pachctl_1.3.3_darwin_amd64.zip"
  sha256 "0b11cd4b404e6dcc3aac6f7e6a11d475445075555fff65bcc85428e86bfcfa03"
  version "v1.3.3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
