cask "consul" do
  version "1.9.2"

  on_arm do
    sha256 "b3fb635984f2745d5459a1e410161fcc923c798bc49ce6cb351abad0a7684d3c"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "8bf1bb3697f26e2af7154ae20d60d554db0c91519a690db091570ed93dbe28da"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: :sonoma

  app "Consul.app"
end
