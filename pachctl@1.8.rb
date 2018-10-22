require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.0-8f47e0df94b6be918690879097e161d6e3f8553c/pachctl_1.8.0-8f47e0df94b6be918690879097e161d6e3f8553c_darwin_amd64.zip"
  sha256 "e67b491714cf3fd4b1778b10e0d72a39eabe6be46a9df4d8b365725abb048767"
  version "v1.8.0-8f47e0df94b6be918690879097e161d6e3f8553c"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
