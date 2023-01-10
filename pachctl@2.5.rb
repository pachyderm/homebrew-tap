require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-alpha.3"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-alpha.3/pachctl_2.5.0-alpha.3_darwin_amd64.zip"
    sha256 "df3a8e68fcf773ddd5b59de5fd48a22dc2d828f03882002064972ab02de10bcc"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-alpha.3/pachctl_2.5.0-alpha.3_darwin_arm64.zip"
    sha256 "f96ee721665e55c065d336773c496e0ddaf19a4a3a3d27cdffca88336750c395"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
