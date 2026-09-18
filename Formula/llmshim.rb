class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.6.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "02575af08f1a323028a0b2139081360e07ee9f525108c6fdd5661bf38aa5553e"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.6.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "893b13dfabc26075a8408ea3c4f0cdc5d4c5522c5949257dcfed02f343c20060"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
