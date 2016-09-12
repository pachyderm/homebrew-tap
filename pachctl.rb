require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.2.0-RCX8/pachctl_1.2.0-RCX8_darwin_amd64.zip"
  sha256 "4d01ab0e8bed6e1b97cd25283380cf98cd31464395737115b12b33b3ea87a983"
  version "v1.2.0-RCX8"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
