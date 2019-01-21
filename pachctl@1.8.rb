require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.2-c86e073511871313edfcd79f02e1fe2c7e31d092/pachctl_1.8.2-c86e073511871313edfcd79f02e1fe2c7e31d092_darwin_amd64.zip"
  sha256 "1d9b5b618d180049f7c1d239ec492b6d16556b6f9712b1a7496758932e2e0fa5"
  version "v1.8.2-c86e073511871313edfcd79f02e1fe2c7e31d092"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
