cask "consul" do
  version "0.4.3"

  on_arm do
    sha256 "a8b011f1f2ec3ad22a8014983db5379925e1c512f375785f3f3074726b9beebc"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "c375b4643afae87605688d76ea3514b44323d80e3468be5c80a45d2d42cefade"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sequoia"

  app "Consul.app"
end
