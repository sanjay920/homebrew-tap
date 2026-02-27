class Agentsh < Formula
  desc "A shell for AI agents - runs commands, blocks efficiently, returns structured output"
  homepage "https://github.com/sanjay920/agentsh"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/agentsh/releases/download/v0.1.0/agentsh-aarch64-apple-darwin.tar.gz"
      sha256 "66b1a819184e7e6133a14da43a2e75cc7ae4b7555cae02216fe0c9f369f94a58"
    else
      url "https://github.com/sanjay920/agentsh/releases/download/v0.1.0/agentsh-x86_64-apple-darwin.tar.gz"
      sha256 "fb0eff70828083e9f2168a5188e35a6daefa50bd355240571043adb15886a55a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/agentsh/releases/download/v0.1.0/agentsh-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "00ae896197eb5a1e5cd396722b8fd18d823f02b973a437cd834f1d984491f5a3"
    else
      url "https://github.com/sanjay920/agentsh/releases/download/v0.1.0/agentsh-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "89f17a056205195db7cb11f2efa8e8b49aa006aee53e0dbe43483bbedcd9b3dd"
    end
  end

  def install
    bin.install "agentsh"
  end

  test do
    assert_predicate bin/"agentsh", :executable?
  end
end
