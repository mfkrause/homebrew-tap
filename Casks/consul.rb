cask "consul" do
  version "0.5.0"

  on_arm do
    sha256 "0384e861fc6935daf9d50ef6d2ec8d13df8bf6b5c52c10a6f3058896f61ad0c2"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "c230b6e5ce2c908593a8916a3788e45ed9d02f85fc6642de0edececf3c25e782"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sequoia"

  app "Consul.app"
end
