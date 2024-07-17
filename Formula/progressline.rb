class Progressline < Formula
  desc "Track commands progress in a compact one-line format"
  homepage "https://github.com/kattouf/ProgressLine"
  license "MIT"

  version = "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kattouf/ProgressLine/releases/download/#{version}/progressline-arm64-apple-macosx.zip"
      sha256 "5d5e21816785a46a5947574a2ce02bc0241837401a2883d769c5b2d66b69d7a1"
    else
      url "https://github.com/kattouf/ProgressLine/releases/download/#{version}/progressline-x86_64-apple-macosx.zip"
      sha256 "3ca691167b807a49db48622d8bec2874ac85692a00c558707b364884ef442952"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kattouf/ProgressLine/releases/download/#{version}/progressline-aarch64-unknown-linux-gnu.zip"
      sha256 "0c501f5f257be53707873fbab39e1135573fb4e01b76f4a13e7e434e924753bd"
    else
      url "https://github.com/kattouf/ProgressLine/releases/download/#{version}/progressline-x86_64-unknown-linux-gnu.zip"
      sha256 "2dce6630a8908a1283c5b985c8ee8ac9337d014ab12b56b9a9eded8d716bad59"
    end
  end

  def install
    bin.install "progressline"
  end

  test do
    system "#{bin}/progressline", "--help"
  end
end
