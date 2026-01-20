cask "consul" do
  version "0.2.1"

  on_arm do
    sha256 "c6e145c9f8a971ff9a765fcdff7b4a8372fa2486f842ecc521ba91204275cdce"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "76b1e3595c7d8c728b178b690e51b2661cc428776110673f2d04f2c1bc3de55d"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sequoia"

  app "Consul.app"
end
