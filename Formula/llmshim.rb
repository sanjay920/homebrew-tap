class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.10.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "beaf62f4fa3a1857f48d79a72d91ac3cf30e1aad5b9acdaf9126d59200759a99"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.10.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "b4c6c6c499e53f57c5edbc55ed649fb39cf88a56f52453606f43475181b56529"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
