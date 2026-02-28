class Agentsh < Formula
  desc "A shell for AI agents - runs commands, blocks efficiently, returns structured output"
  homepage "https://github.com/sanjay920/agentsh"
  license "MIT"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/agentsh/releases/download/v0.2.1/agentsh-aarch64-apple-darwin.tar.gz"
      sha256 "597b7341b30c7b60a35ba6e12311c89908b89c0e01899155cac775390ee81f30"
    else
      url "https://github.com/sanjay920/agentsh/releases/download/v0.2.1/agentsh-x86_64-apple-darwin.tar.gz"
      sha256 "4d5fb19dbeda7466ace7277a2d9fa7a987ba10632fdd48e938bb6f205c512813"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/agentsh/releases/download/v0.2.1/agentsh-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c834ce5e9c747023ed26057f8229f3a7b2161d9b1886aca396b099b38b933694"
    else
      url "https://github.com/sanjay920/agentsh/releases/download/v0.2.1/agentsh-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "539620ec9549b67dc4f573de4f434e1b3a2d2f42d77bf6e0822357d239845468"
    end
  end

  def install
    bin.install "agentsh"
  end

  test do
    assert_predicate bin/"agentsh", :executable?
  end
end
