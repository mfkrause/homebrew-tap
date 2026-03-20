cask "consul" do
  version "1.4.1"

  on_arm do
    sha256 "4f8ad858d769600738d0d7abd47ba297e06b7bff1caec322e903733e5363b576"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "d665dda0f04ce3109b189fc342f310faba4450b040cc68e98217ff379c0c57e6"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sonoma"

  app "Consul.app"
end
