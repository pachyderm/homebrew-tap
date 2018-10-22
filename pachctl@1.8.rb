require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.0rc1/pachctl_1.8.0rc1_darwin_amd64.zip"
  sha256 "614ac8180fb56d7bb3ea516024f31ecf8025bd99485728973e42ed56044beba8"
  version "v1.8.0rc1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
