cask "consul" do
  version "1.0.0"

  on_arm do
    sha256 "b721dd944d1819bce8092a1906f9ffb5a6c91188a407ced58a57e86006e566c6"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "3b325ed6bfa3ad6b45aa8725380c2c12e0dbc652ec56b18ad73c22e20715dcb5"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sequoia"

  app "Consul.app"
end
