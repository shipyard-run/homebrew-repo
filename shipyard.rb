# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.49"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.49/shipyard_0.3.49_darwin_x86_64.zip"
    sha256 "c6a5e869e853be1ec967750ace0afec80169f6e4f6f4053c8cd1f3a669920875"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.49/shipyard_0.3.49_darwin_arm64.zip"
    sha256 "bdf86d005cb8b9aafe268cade9a18c885f7ed51f4cc2afe8765674b8d9f1e0c9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.49/shipyard_0.3.49_linux_x86_64.tar.gz"
    sha256 "f2663c5f78f2216efafdfcf5e67b0704e099df3e1abdce2ea82912384a810e1b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.49/shipyard_0.3.49_linux_armv7.tar.gz"
    sha256 "a59b7c21823f194862053e1172703a498533a421b89747568848679f4e84adf3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.49/shipyard_0.3.49_linux_arm64.tar.gz"
    sha256 "3bbb01b787e8e2cfa24736f68e96febcbaaaf5f85d790680b198dd44930b7721"
  end

  def install
    bin.install "shipyard"
  end
end
