require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.3"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.3/pachctl_2.7.3_darwin_amd64.zip"
    sha256 "3a3732b03b94ae1fd30a1448315d1e09937bedf4326c54dbdab818897966aac9"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.3/pachctl_2.7.3_darwin_arm64.zip"
    sha256 "95c24779063c7d5b9375fcfdbc6a45a4e909d4d8a8e40919c63ad08905b15a51"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
