class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.2.1/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "ad268558747461109199a0828e43b94d6d3059f359941f7fc3ca20a56e9f841b"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.2.1/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "a7d56a92f3f5fcb73caba278864acd301532c5e1a4351ab190a15152069164d2"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
