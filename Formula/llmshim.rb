class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.22.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.22.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "1ca8307629971e0163b4685bc0c8ec812c61e3ae4518de07c2db9085b5fd4d3f"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.22.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "6595d7c077830f82d7cc5e0ab6d82572192436beb30622ba004e455a84bebbc7"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
