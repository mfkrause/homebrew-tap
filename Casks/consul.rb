cask "consul" do
  version "2.0.0"

  on_arm do
    sha256 "8bfd4517d5c35cba2972c0a85266ee6dbd18975c22706acd833da9a401908d93"

    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "53501d2e41abc481b3feff3c8af93cea9ffc339059829c92745068c527fd5f55"

    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app/"

  auto_updates true
  depends_on macos: :sonoma

  app "Consul.app"
end
