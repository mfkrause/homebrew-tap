cask "consul" do
  version "0.4.2"

  on_arm do
    sha256 "f30603cd0a67da0eef3f1e42067ceef7294d981cc10df500fb434be53064e4d8"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "be6b4e63396c60d604ffc1c61ed90c8c347f8dde040006ed9d69f8cc4f411f8f"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sequoia"

  app "Consul.app"
end
