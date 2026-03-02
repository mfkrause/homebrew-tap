cask "consul" do
  version "0.6.1"

  on_arm do
    sha256 "6545cd8d687499ecabb2aa04b9a0f9a3c0f65dd8bacf7e7ff3ca4b22dfd45c20"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "507f720a041415dfff1c09831c1b4562ef2011b8619f5cc17f0aad78b4fc566a"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sequoia"

  app "Consul.app"
end
