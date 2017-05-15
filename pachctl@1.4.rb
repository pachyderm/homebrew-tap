require "formula"
require "language/go"
require 'erb'


class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.7-1a7fcad7aeec560f0ee53b93a38373c3feeedcc3/pachctl_1.4.7-1a7fcad7aeec560f0ee53b93a38373c3feeedcc3_darwin_amd64.zip"
  sha256 "f65411b9cbe4a227f4dbc85bf39642752a082c9b46117b587708be009372584c"
  version "v1.4.7-1a7fcad7aeec560f0ee53b93a38373c3feeedcc3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
