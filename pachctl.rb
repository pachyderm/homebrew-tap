require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.2.0-RC1/pachctl_1.2.0-RC1_darwin_amd64.zip"
  sha256 "5b69dd3e3940d1839166f5a600305218337d993acf497b8643244badf03ee56f"
  version "v1.2.0-RC1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
