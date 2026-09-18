class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.7.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "10ed1f5dbed086cd36b2e58c1a38db5b7c52261faa2d856e95fd24688f80ea41"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.7.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "568d7dd8f8305a902d6b8d5af490217306e158498e87c2135f9bd5b0bbbbed01"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
