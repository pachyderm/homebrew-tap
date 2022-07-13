require "formula"
require "language/go"
require 'erb'


class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.3.0-alpha.3"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0-alpha.3/pachctl_2.3.0-alpha.3_darwin_amd64.zip"
    sha256 "b2cc6884b9baf5d74ea23bddb9982387c2678fa33bc44c7af0781c0af9355a29"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0-alpha.3/pachctl_2.3.0-alpha.3_darwin_arm64.zip"
    sha256 "dd9bb8d22bd7c38c14025ef466c5a89985c4765def0de925791c1fd677f7f913"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
