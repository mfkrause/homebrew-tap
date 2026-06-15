cask "consul" do
  version "1.7.1"

  on_arm do
    sha256 "2766ef954b683fcb00d77137930f2789ad06a3e935cbf31589538823e55ca974"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "31dae5dac2b1e1d118d50b5bf6f2ffb6eccf1e0e777e08a55e9d3c1ad0e70686"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sonoma"

  app "Consul.app"
end
