class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.3.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "61ef4102b5b57300e23827ef6c22b729dbf8c546159bbc25fe9f3dad047e12c5"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.3.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "e5bf76fcc668ec925ed23f5b177ada1e51cf5135546e9fa09218773541a53a94"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end
