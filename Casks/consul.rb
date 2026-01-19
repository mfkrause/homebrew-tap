cask "consul" do
  version "0.0.4"

  on_arm do
    sha256 "6a64c10dbc9d9b26cf3f443c4906c71c66a7783a7bfb6080949bb80294b814ab"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "65b67c43183f2079828764c9f97ee1a92f4a71f12624393abf4e82481c4852ef"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sequoia"

  app "Consul.app"
end
