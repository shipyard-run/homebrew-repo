# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.43"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.43/shipyard_0.3.43_darwin_x86_64.zip"
    sha256 "657202b2ebf6a1846e96231bb335068b04e1810b06efeca891662d099a80610b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.43/shipyard_0.3.43_darwin_arm64.zip"
    sha256 "46bd360552c9c56585273a90bfbeb449b891914009b188943e19517c1ed28ae8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.43/shipyard_0.3.43_linux_x86_64.tar.gz"
    sha256 "44f5fbb5f75c3e985271c1ff47fc40db158d5059c93c7bbd6eca690aa5ee1819"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.43/shipyard_0.3.43_linux_armv7.tar.gz"
    sha256 "79cb6712da2bdef2d0670e5c735ac6970689f46306274790e83613ae736d1107"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.43/shipyard_0.3.43_linux_arm64.tar.gz"
    sha256 "d43e1c5cc7a50f240f74866e117ae77f4f16487b35d06ac9161082ec680e055c"
  end

  def install
    bin.install "shipyard"
  end
end
