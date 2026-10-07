class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.25.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.25.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "c9289b395b06f274cab3c82cbf4b0d3202ceb8692d380d31d919665baada73fd"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.25.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "206e3801c57242b7c6072215df222e3335bd6d688775b1973d4d32df0acb8155"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
