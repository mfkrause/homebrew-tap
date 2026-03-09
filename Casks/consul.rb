cask "consul" do
  version "1.3.1"

  on_arm do
    sha256 "5569bed0d81aff831a8ffc426c1550eb66776b877421804f950ca2cc666311dc"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "38a414a5d8b16b56d54242889ea04a93fed0485c57d87a83950e2ce0892b3668"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sonoma"

  app "Consul.app"
end
