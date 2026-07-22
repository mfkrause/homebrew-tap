cask "consul" do
  version "1.9.0"

  on_arm do
    sha256 "03bd89df7375c3d8260f2a4ab16eec1dea94152a8b1daa299b017f1fc7cbec81"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "ed23ddd252c244777dd1f267db16bf59803a4ca053225d7b31ff064d693c9257"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: :sonoma

  app "Consul.app"
end
