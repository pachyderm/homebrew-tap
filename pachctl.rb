require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.0-2b908777551ccd8af08cfb23d4c57f9ad0fd4831/pachctl_1.3.0-2b908777551ccd8af08cfb23d4c57f9ad0fd4831_darwin_amd64.zip"
  sha256 "bb82cac1043941795150ad7ef378be0989d77cf1db3f2cc663c2bf13164340e1"
  version "v1.3.0-2b908777551ccd8af08cfb23d4c57f9ad0fd4831"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
