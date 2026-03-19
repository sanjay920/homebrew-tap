class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.1.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.14/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "4c049e39031120318c3ceacfdcd3e996a132944d28d11adc54ff9ae5cdf77af1"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.14/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "4e82b3d4f20e1cd7a097a8e68f36ab3b27450f8410ee5d05cdf8b1aeb1a84960"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
