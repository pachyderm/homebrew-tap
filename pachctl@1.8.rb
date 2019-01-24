require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.2-977196a0549d5a5cfe5459a21a57d9656db8aee1/pachctl_1.8.2-977196a0549d5a5cfe5459a21a57d9656db8aee1_darwin_amd64.zip"
  sha256 "fbd2037ddd6e23d6ddc1439505907adee518af42eeebca5436e4469e8c933903"
  version "v1.8.2-977196a0549d5a5cfe5459a21a57d9656db8aee1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
