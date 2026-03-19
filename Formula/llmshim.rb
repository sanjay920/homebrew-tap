class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.1.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.15/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "82d11774e24685eb2754d6863ce8f59b7015901d80d4b3d090d542148da3389f"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.15/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "a2922315d257e609aa1fcd2e105548d01bc7709963baa5c07fb36f9711982272"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
