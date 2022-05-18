require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.8-45a8097f8bd4a08fa65e9ea7220848c02b80bfda/pachctl_2.1.8-45a8097f8bd4a08fa65e9ea7220848c02b80bfda_darwin_amd64.zip"
  sha256 "dd68e83dda0531a66c1f8ffe39fcb27a4fa89e7227df5553663b1b53b3632a48"
  version "v2.1.8-45a8097f8bd4a08fa65e9ea7220848c02b80bfda"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
