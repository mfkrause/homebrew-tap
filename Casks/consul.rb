cask "consul" do
  version "0.4.0"

  on_arm do
    sha256 "07f0e1c5a3b0bdbfae25576f9b8af910d5a3067d6831c6128e3fb084f1604e8c"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "04339e1d95499999a24e4fa4653af22b256ee0a1b14a8a6801952160268a0fc2"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sequoia"

  app "Consul.app"
end
