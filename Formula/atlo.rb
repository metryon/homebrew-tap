class Atlo < Formula
  desc "Agent-first CLI for Jira Cloud and Confluence Cloud"
  homepage "https://github.com/metryon/atlo"
  version "0.2.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/metryon/atlo/releases/download/v0.2.0/atlo-v0.2.0-darwin-arm64.tar.gz"
    sha256 "046cf93d413608aad0b793ec7d94e5a8752e839022f7c27c202c39fef7961692"
  end
  on_intel do
    url "https://github.com/metryon/atlo/releases/download/v0.2.0/atlo-v0.2.0-darwin-amd64.tar.gz"
    sha256 "4985f65023946c3bc02aba855106bb7a3bd22e4107664227d07e5142ca4f261b"
  end

  def install
    bin.install "atlo"
    prefix.install "LICENSE", "THIRD_PARTY_NOTICES"
    doc.install "README.md"
  end

  test do
    require "json"
    assert_equal "v0.2.0", JSON.parse(shell_output("#{bin}/atlo version")).dig("data", "version")
    assert_match "jira issue get", shell_output("#{bin}/atlo schema jira issue get")
  end
end
