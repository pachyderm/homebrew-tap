require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.22/pachctl_2.0.0-alpha.22_darwin_amd64.zip"
  sha256 "408d8673f245a9afc7fbd47cd4fb93b426fb923f12ea545882f3a819cdf9281f"
  version "v2.0.0-alpha.22"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
