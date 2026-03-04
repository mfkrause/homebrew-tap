cask "consul" do
  version "1.1.0"

  on_arm do
    sha256 "3b7d264b76cdb42b968c563a1db2cbd79e743d550e03ad4550abc866a9f66b7f"
    url "https://getconsul.app/releases/Consul-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "cd371fec2053519a1843f0432cd5e8a9d7b7288ef8587734cb09fef7b5356c05"
    url "https://getconsul.app/releases/Consul-#{version}-x86_64.dmg"
  end

  name "Consul"
  desc "Automatically converts files when their extension is changed"
  homepage "https://getconsul.app"

  depends_on macos: ">= :sequoia"

  app "Consul.app"
end
