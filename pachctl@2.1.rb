require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.5-ef106b6766de1fb2bb2f08558baaef5716668692/pachctl_2.1.5-ef106b6766de1fb2bb2f08558baaef5716668692_darwin_amd64.zip"
  sha256 "b029e2aae8e79210a65aa48a5a7103062a814b069de23436161b48facc39cba9"
  version "v2.1.5-ef106b6766de1fb2bb2f08558baaef5716668692"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
