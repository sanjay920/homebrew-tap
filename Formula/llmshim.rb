class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.29.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.29.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "601972f357064d0abac20540f7af22d5aba4f346ca0624b5067b8e751d652147"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.29.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "2f17a74fbc1cb693bef7864636dd064fe71f9d42a22eb632d1eb11995d755997"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
