cask "consul" do
  version "1.3.0"

  on_arm do
    sha256 "3a4348af2a286fb95a95cbf7843aaf6a5610f0a793dd49ada66de8e7f606fd53"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "177da1edf97fdcfe85d8db65fb1467a353275e09006bb9ede1f6b88f0988d28b"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sonoma"

  app "Consul.app"
end
