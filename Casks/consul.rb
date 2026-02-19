cask "consul" do
  version "0.6.0"

  on_arm do
    sha256 "4204fd941794c407ca77b2ba0d11b692eb27688372595146a3f9f699ee501c94"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "9623bd40ee6a56e91b896645871a1872c959b011a58400c186079bce7a8ef379"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sequoia"

  app "Consul.app"
end
