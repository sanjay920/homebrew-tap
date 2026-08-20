class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.3.3/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "9ecd36815e3990cd3049836bcf709cf02c5f7ecad30d31aa543a7260096a7802"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.3.3/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "447ba9590d67b6fa1c5e468dd25a5977e1dfd8088ca4f2a9d50d4cc36be1ce62"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
