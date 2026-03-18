cask "consul" do
  version "1.4.0"

  on_arm do
    sha256 "51f294e9c9e6f07246b376d1018c6bfaab1def325fb899aacb9b4c76f0b3bee1"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "446e7f1f7ebc60bfdb743b1cd287daced9efb6ffd8148750f666fe9608baef73"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sonoma"

  app "Consul.app"
end
