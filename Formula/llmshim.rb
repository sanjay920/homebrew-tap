class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.1.23"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.23/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "825ec662edab3c75a8ead6a044aaf024a1b18337a088fd9053957a6df2635555"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.23/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "6a5075b412ddfb8ae32a931aa9b6bb7363b4181aed917b843cd6904a1ab078ca"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
