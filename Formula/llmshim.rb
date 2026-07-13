class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.1.26"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.26/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "c6eb32b206cd52e094daba6161ab584b1027a7644bd1d868e2d0aa8931262392"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.26/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "2c79b1ba9433d2e2826d5c20064d32e9813f3f90554ed7a06fcf8b5ee02d9038"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
