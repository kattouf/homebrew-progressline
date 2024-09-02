class Progressline < Formula
  desc "Track commands progress in a compact one-line format"
  homepage "https://github.com/kattouf/ProgressLine"
  license "MIT"

  version = "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kattouf/ProgressLine/releases/download/#{version}/progressline-arm64-apple-macosx.zip"
      sha256 "de5464eb95be0187375c7de594089135f7b7bcc0883682436732ac556c691e41"
    else
      url "https://github.com/kattouf/ProgressLine/releases/download/#{version}/progressline-x86_64-apple-macosx.zip"
      sha256 "b0aa8b44dbef27fe43aeb474cf18308c34e05c29913623385fb9511831e2841a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kattouf/ProgressLine/releases/download/#{version}/progressline-aarch64-unknown-linux-gnu.zip"
      sha256 "1395d10529137ec87bfaea29d5539ceaf645e2e33aaab81d1e92b4fa3c17fc4f"
    else
      url "https://github.com/kattouf/ProgressLine/releases/download/#{version}/progressline-x86_64-unknown-linux-gnu.zip"
      sha256 "675c3d8e87857daf71d5c6c6999e9a96048dd18e925616727200928375f8718d"
    end
  end

  def install
    bin.install "progressline"
  end

  test do
    system "#{bin}/progressline", "--help"
  end
end
