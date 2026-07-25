class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.2.3/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "8e6986c1a45e03c76b3c90d5376513744ce31e992f725f02dbeb02541ad52cfc"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.2.3/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "43d19634e704a3aa49dc747172e738402b1ef4c0c3d19c64ffb9a1cdfdc5670e"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
