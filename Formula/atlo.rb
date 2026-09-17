class Atlo < Formula
  desc "Agent-first CLI for Jira Cloud and Confluence Cloud"
  homepage "https://github.com/metryon/atlo"
  version "0.1.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/metryon/atlo/releases/download/v0.1.0/atlo-v0.1.0-darwin-arm64.tar.gz"
    sha256 "450eedd94ad68fb1ec3d7fffd3a76764a2629161727564ff2baa8ff70d36b32f"
  end
  on_intel do
    url "https://github.com/metryon/atlo/releases/download/v0.1.0/atlo-v0.1.0-darwin-amd64.tar.gz"
    sha256 "7948a9f4b45800a1f35385e6142906f38968463dce6a00dc7ab79cbd0485636d"
  end

  def install
    bin.install "atlo"
    prefix.install "LICENSE", "THIRD_PARTY_NOTICES"
    doc.install "README.md"
  end

  test do
    require "json"
    assert_equal "v0.1.0", JSON.parse(shell_output("#{bin}/atlo version")).dig("data", "version")
    assert_match "jira issue get", shell_output("#{bin}/atlo schema jira issue get")
  end
end
