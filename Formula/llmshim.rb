class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.13.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.13.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "332b5d7b02b0ee46c7dd0dfa4092d5f1af83103eeccff3de32c4053950bcbe5b"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.13.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "a776090d277f38fb815d0079d0e2df99fb4d58782cb6d3d8b412fc748f449c46"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
