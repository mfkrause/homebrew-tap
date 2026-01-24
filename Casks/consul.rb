cask "consul" do
  version "0.4.4"

  on_arm do
    sha256 "92bfe4b943b62605fc2be49b8f64c37f973e5a76bfc8792bfb9b2139fe260c75"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "3f90ec08c4fb99155b7861ac914300dfea3e29966715c3a2549c97726f72e582"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sequoia"

  app "Consul.app"
end
