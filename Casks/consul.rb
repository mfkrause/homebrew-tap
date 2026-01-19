cask "consul" do
  version "0.0.3"

  on_arm do
    sha256 "1703a35d34ad1b00419d1352bc1afbf99ad319a78adf357b7f1d0ffdd53cdd97"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "a21bc7b2edd0f007781cbc4a8a4a1d79094b0b6e917b65f1e505d5eded5d9ee7"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sequoia"

  app "Consul.app"
end
