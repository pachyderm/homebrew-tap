require "formula"
require "language/go"
require 'erb'


class PachctlAT22 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.2.0-e3b5a3f7e6aa0b1af9706eecdf91eef933762821/pachctl_2.2.0-e3b5a3f7e6aa0b1af9706eecdf91eef933762821_darwin_amd64.zip"
  sha256 "40b2f9ad0bf053937ea0861e4b55e68711704bb8ce4359c61a0d963aac9bef90"
  version "v2.2.0-e3b5a3f7e6aa0b1af9706eecdf91eef933762821"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
