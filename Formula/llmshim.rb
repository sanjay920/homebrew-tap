class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.1.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.10/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "578c5e4123c39729819444f554500c6b0d44708f6fc583e1aa73c77a88c4f6ab"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.10/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "723ef8a7c7f3c519f9230c91e8bef1dabab71488ef79671b090182eac4324c1b"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
