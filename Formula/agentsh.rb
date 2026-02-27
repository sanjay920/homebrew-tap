class Agentsh < Formula
  desc "A shell for AI agents - runs commands, blocks efficiently, returns structured output"
  homepage "https://github.com/sanjay920/agentsh"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/agentsh/releases/download/v#{version}/agentsh-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/sanjay920/agentsh/releases/download/v#{version}/agentsh-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/agentsh/releases/download/v#{version}/agentsh-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/sanjay920/agentsh/releases/download/v#{version}/agentsh-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "agentsh"
  end

  test do
    # The server exits immediately when stdin is closed (no MCP handshake).
    assert_match version.to_s, shell_output("#{bin}/agentsh --version 2>&1", 1)
  end
end
