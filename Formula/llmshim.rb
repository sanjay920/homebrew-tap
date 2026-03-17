class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.1.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.11/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "2db7d7f8815bc8615d7817da7c4f47ca4226b7de31803170b9cb75ff7462cd39"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.11/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "d3bb8b3aa646c8279114e25dcc36e3b6ddc1f37aef0b71592244d237ae662dd5"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
