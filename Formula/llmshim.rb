class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.15.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.15.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "feed89bbdfd856688d7338bdba7b21d455236016c29961555d356068bcf237c7"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.15.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "3b06fd847e4da1cf520814e4412e6d1a18f34c8fe6a919a17e8b03feb7f31240"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
