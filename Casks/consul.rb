cask "consul" do
  version "1.7.2"

  on_arm do
    sha256 "ab7be32a2ed2b235b49a7b33003205127471988a9def4033e582548ae96cd909"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "14e4fa188ccc3cc61089e7caef7b2d9bee9ff72bd6fafcc3e9093a2f5240ed85"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sonoma"

  app "Consul.app"
end
