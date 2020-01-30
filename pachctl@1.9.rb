require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.10-e6932adad8179d89bfa7498204001a6589321031/pachctl_1.9.10-e6932adad8179d89bfa7498204001a6589321031_darwin_amd64.zip"
  sha256 "03250b84b88fdbbf5ee2c23b9283b74beb7f5a0f678ee69882af18c43b7639c9"
  version "v1.9.10-e6932adad8179d89bfa7498204001a6589321031"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
