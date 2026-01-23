cask "consul" do
  version "0.4.1"

  on_arm do
    sha256 "2073a6f45d9d9bf46ee280b34b4b4a6fa40188a2603d2de2420cd46b4cbe0b5a"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "1c56f2aaca59478ac6666a3ce8b1b21576c4e33edb1dd019ba1e4954aa30bb2d"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sequoia"

  app "Consul.app"
end
