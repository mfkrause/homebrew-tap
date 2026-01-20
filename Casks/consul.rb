cask "consul" do
  version "0.2.2"

  on_arm do
    sha256 "0170a6c3048616669526ad736ecb158f294567cf77321dcfaaa059166aaedecd"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "b44b155a0794a723df1ed051289310caa46407a0b0a09f316fa29f4c5b76a7ac"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sequoia"

  app "Consul.app"
end
