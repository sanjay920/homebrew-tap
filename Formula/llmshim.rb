class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.3.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.3.4/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "8e92f297f6c36fee77e6033bacdfeee66febf11097cd9d7dcafe0dbeb607d94c"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.3.4/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "298aa305c1e405fb9738870c9d87c43993b2864dcb850aacda82a8964f253447"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
