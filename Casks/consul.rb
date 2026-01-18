cask "consul" do
  version "0.0.2"
  sha256 "68b3d5e9bd38db386d2d2f51143a167801f463852c423a5c9de38adce628ccd3"

  url "https://getconsul.app/releases/Consul-#{version}.dmg"
  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sequoia"

  app "Consul.app"
end
