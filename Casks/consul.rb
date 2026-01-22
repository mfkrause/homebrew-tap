cask "consul" do
  version "0.3.1"

  on_arm do
    sha256 "5309dcf56e046a87afc28082859ea12d8f1163d16d01b3a16c79f5a71057d59b"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "70296433596078c35b0c5fae7410e5646aa3c019edd4ee6b044527de1962fa10"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sequoia"

  app "Consul.app"
end
