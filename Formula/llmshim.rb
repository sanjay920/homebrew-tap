class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.1.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.9/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "fd617a35b5dfc0c603520f1168c2e7ae3ee936101aebffab20e41870b67ca74b"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.9/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "0e789d59fa2234bcf9e8420e0f0debe45e951f5fcaaa1b06a1b8575c5431720f"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
