cask "consul" do
  version "1.8.0"

  on_arm do
    sha256 "47f7006229d574ac4a6385277525bbc7666ce004ae1d93574a329496d38bf50a"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "6aaee843e388c5ced533a0c9ec05bf3ff64a5125507d698f3207465b786f3abe"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: :sonoma

  app "Consul.app"
end
