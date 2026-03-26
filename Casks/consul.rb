cask "consul" do
  version "1.5.0"

  on_arm do
    sha256 "d1692e610be41633f0fd49e4a3639d49d4932f6f0da1057989e1f5b7c9515eda"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "86e005ad07647072652ba6bf806bcca6f8ec68876141e0fd0f31bd5f5a5ceef3"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sonoma"

  app "Consul.app"
end
