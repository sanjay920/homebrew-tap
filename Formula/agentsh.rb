class Agentsh < Formula
  desc "A shell for AI agents - runs commands, blocks efficiently, returns structured output"
  homepage "https://github.com/sanjay920/agentsh"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/agentsh/releases/download/v0.2.0/agentsh-aarch64-apple-darwin.tar.gz"
      sha256 "e84849a1cd4711942271c14c495ce6b32d8c26a4b026a974daa434eb3aee4869"
    else
      url "https://github.com/sanjay920/agentsh/releases/download/v0.2.0/agentsh-x86_64-apple-darwin.tar.gz"
      sha256 "513d13eb59d8666a28f418df83fbcef389e04811593e3339ef2dc0e45c1ee8e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/agentsh/releases/download/v0.2.0/agentsh-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dfd2bbf44dcc57ee86fe8d3e65ffa2cd3f90cfd5878cd430d2a70d5098ce8f54"
    else
      url "https://github.com/sanjay920/agentsh/releases/download/v0.2.0/agentsh-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "93890003d0be47c73a5e0d01421798d610c3f84a50d34b65fdd681c6f410b5ac"
    end
  end

  def install
    bin.install "agentsh"
  end

  test do
    assert_predicate bin/"agentsh", :executable?
  end
end
