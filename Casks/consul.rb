cask "consul" do
  version "2.2.0"

  on_arm do
    sha256 "fde826d51404d4c9beb79f30166167e92c119c0eebb96d15eb0b6e0d6711d37b"

    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "93d545afba24b0a77850352cc5f065bfe7ea59d123f8961449a2fc9eb4800efa"

    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app/"

  auto_updates true
  depends_on macos: :sonoma

  app "Consul.app"
end
