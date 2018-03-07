require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.0-d7c849200220d252b5eb68d02f553773cfccf19c/pachctl_1.7.0-d7c849200220d252b5eb68d02f553773cfccf19c_darwin_amd64.zip"
  sha256 "a9d0c79367f5672a27e14d27aa9cfc62f11f109a69f73b40dc44d8f387a96967"
  version "v1.7.0-d7c849200220d252b5eb68d02f553773cfccf19c"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
