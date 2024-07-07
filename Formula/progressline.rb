class Progressline < Formula
  desc "Track commands progress in a compact one-line format"
  homepage "https://github.com/kattouf/ProgressLine"
  license "MIT"

  version = "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kattouf/ProgressLine/releases/download/#{version}/progressline-arm64-apple-macosx.zip"
      sha256 "1d8ee28169d68ac3ff00c876cf9f41507079e060f652e6072941f160b2efa0f5"
    else
      url "https://github.com/kattouf/ProgressLine/releases/download/#{version}/progressline-x86_64-apple-macosx.zip"
      sha256 "dd9e5ac821cecfff2c541d809f2c72348c4350b2231954562da0660a96d2fcbc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kattouf/ProgressLine/releases/download/#{version}/progressline-aarch64-unknown-linux-gnu.zip"
      sha256 "6c88b714555deae2ba06f402127076f5747bda2d0e35e091dff29a53429e5f4b"
    else
      url "https://github.com/kattouf/ProgressLine/releases/download/#{version}/progressline-x86_64-unknown-linux-gnu.zip"
      sha256 "745833ca0283cb25b35bc3a42cef96347f289542963b476c853c3f2ca22e56fa"
    end
  end

  def install
    bin.install "progressline"
  end

  test do
    system "#{bin}/progressline", "--help"
  end
end
