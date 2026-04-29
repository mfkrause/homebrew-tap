cask "consul" do
  version "1.6.0"

  on_arm do
    sha256 "29f07b1602f6f967e25a379721c02d62243faf5c8fd11b9172799806c055a691"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "a68ac9f780d5597993c0963d4247c7031df55a8b9f561b01c0aee0f54af2e621"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sonoma"

  app "Consul.app"
end
