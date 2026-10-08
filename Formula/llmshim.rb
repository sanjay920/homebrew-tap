class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.27.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.27.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "8e1d9c7dc5a714e12d4eef57082408f98a47f609e5f36ab97e67140bd0d4a2bc"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.27.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "987c58b5dd3f73a708cc84d34c44d8dd7faf52733e39676f0585415b1fc72309"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
