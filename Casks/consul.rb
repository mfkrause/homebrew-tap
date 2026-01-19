cask "consul" do
  version "0.1.0"

  on_arm do
    sha256 "fcbf74eb4a0e137d7d8278381fe7291dcf8f234e37f3c8edd79289291794f38f"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "0aae7dd8fbc82f7d28b3ed8f092045ad61d84d1c1f0b9c3abde8d4001ff2e1da"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sequoia"

  app "Consul.app"
end
