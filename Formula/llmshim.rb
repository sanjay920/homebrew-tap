class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.1.25"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.25/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "58cb8bbaee1be955250569f8a97580ba5901f5aefdcbf45974803e29242c4ff8"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.25/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "8b472eec05fd52c89c0bf47fcef5d743ba045bde6847724be8e36a37f9ff4f94"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
