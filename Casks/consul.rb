cask "consul" do
  version "1.2.0"

  on_arm do
    sha256 "8cad27c1c1b8d736802a6d9272fd584e8c666ecc1eea5e8a270c5aad4e54e725"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "f45fe8a23f58535801aff211c21562f4cf9d742bed5cfdf6ec554625f416e38d"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sequoia"

  app "Consul.app"
end
