cask "consul" do
  version "1.7.0"

  on_arm do
    sha256 "62a9aee575886f9bddf1a79e8aaac2fa377ae5f61ccd1d5f36b93c7fc77b5454"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "c572600b4709e2f05a3c3da6c462f533baa5ffa5eef646d4557aa69c8bc1146d"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sonoma"

  app "Consul.app"
end
