cask "consul" do
  version "2.1.0"

  on_arm do
    sha256 "4faa71dca5fba251dce446f374b3a23d16e74afb8af76a933ddf8540c91911be"

    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "60c25f358d8c2ab89cbb2517880682261d18e5b550eb31ccbf116c4f93b97068"

    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app/"

  auto_updates true
  depends_on macos: :sonoma

  app "Consul.app"
end
