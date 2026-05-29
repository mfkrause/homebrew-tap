cask "consul" do
  version "1.6.1"

  on_arm do
    sha256 "0b23df67a2359efb4d7d93fc1a0af805b472bf18e94601835e376138ff4eb35a"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "e7dbe69a6682af877a62d8248e61eaf95e4f6b66cdd3535350ac5724842c30cc"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sonoma"

  app "Consul.app"
end
