class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.8.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.8.1/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "23f2e7bd47ea70728d4941991dcefaee4a9ebbae7a3d3b245beae4b2884e9a21"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.8.1/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "cf0bd5a56c12f29ad33d757aa02f068502e0f82fdee09fabfa0fb1765f0a28c9"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
