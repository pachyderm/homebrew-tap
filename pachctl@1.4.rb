require "formula"
require "language/go"
require 'erb'


class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.7-RC2/pachctl_1.4.7-RC2_darwin_amd64.zip"
  sha256 "9ce561d27392c933ba340ec1bd9619685ded4bc6812cb8a3da880dd742704ff8"
  version "v1.4.7-RC2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
