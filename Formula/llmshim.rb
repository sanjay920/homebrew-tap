class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.24.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.24.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "41eaee10d7b73e6a71f50f562358d8e59cc356f13edc5898f0cdaadfa695e5f2"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.24.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "4529b3a413a2eb4e6967dbf31e476701d2cec7f4754c982d33b26c659302cbc3"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
