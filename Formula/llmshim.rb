class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.14.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.14.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "609975c350e285f1af0a14b911c514980ef9e54c200a3fc6f168fad6d6f685f0"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.14.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "5d871657b684656bdfcbb9f14bdd8b6a9abf5b08b7b4531f987721796d84d0d2"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
