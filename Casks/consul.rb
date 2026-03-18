cask "consul" do
  version "1.4.0"

  on_arm do
    sha256 "ef9c52b606e478e8cdbab692bfbd47952ef759ac122d8c5e2341b13fbfdbf065"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "bdb03b8ffee12eea04ded8cb7a9b9381a8a1b59b54bbd24dc182044d36fe5449"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sonoma"

  app "Consul.app"
end
