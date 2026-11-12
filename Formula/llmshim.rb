class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.31.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.31.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "08ba4defb40fb29092b27562418b1c6d7ab76965d6e9be1a2c09915727de7f40"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.31.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "f81476fa6d5fbf7fd257723272c51f5d9c95a0975048b750a729ac61bfe77aab"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
