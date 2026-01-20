cask "consul" do
  version "0.2.0"

  on_arm do
    sha256 "f37e454d43dc58714dd7b781222195b029d9a1793ce5732281c33b06d72b80ed"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "b6307a72c2d57d15d18e6af0b6c1d76e8ed40ccc7e50d2067ca83cb7a4f01b07"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sequoia"

  app "Consul.app"
end
