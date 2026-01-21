cask "consul" do
  version "0.3.0"

  on_arm do
    sha256 "95c103c031d5c0828e442fd938c946f4f728ba46c299c352515e127eb7b1a18c"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "8acf1806b8a5360c43890c01a88f82fbd2bcb92e30fdf6a34ca11f6aad4fbd34"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sequoia"

  app "Consul.app"
end
