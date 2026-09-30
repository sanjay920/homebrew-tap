class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.17.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.17.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "1ff38c2e36bdf68ff0bb5aa2c648f305f0a001a345413eb0f3b8ee3060eaefd2"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.17.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "468f1ffe1428a90fbaa01fb75d3acdfa7d342a02727b01e6b473c5cf670098d9"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
