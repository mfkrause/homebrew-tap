cask "consul" do
  version "1.9.1"

  on_arm do
    sha256 "1a28046ecb32a72cc17ce67ac64e83eb1776890ec206092f4424662ad20e81f6"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "b895d8ac5731b36a4b652822090d4c16bc22b8a6c7d1a64f23dc07e46e4815c0"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: :sonoma

  app "Consul.app"
end
