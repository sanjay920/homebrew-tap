class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.9.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "9169741b238e0718969350f657db4f70acd21ac83d6e3ad9311649144f2f95d4"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.9.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "8f6bf2395bad56a7cb2d948e13ba6aa518fbd2ff684461f64f8ecdca02a93f1f"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
