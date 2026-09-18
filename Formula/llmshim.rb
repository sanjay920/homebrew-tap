class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.5.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "8bce6fa58596546006cca701b26039b49920922f0ee2c85f5ca9a5534eb4ff3e"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.5.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "010e810023e4383d90721444bbb95e919e625323c2fc8c864f7ce2631a05a021"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
