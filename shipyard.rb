# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.4.11"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.11/shipyard_0.4.11_darwin_x86_64.zip"
    sha256 "1aa4e67a98fe2aef1f99f4df43e74a83aa931411660ad26a1d1e81af30e022e1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.11/shipyard_0.4.11_darwin_arm64.zip"
    sha256 "8813cd110ce8d9d10a0c49d0d230539b0bced523786d79de33299dca1f0edc47"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.11/shipyard_0.4.11_linux_x86_64.tar.gz"
    sha256 "f3ed3598c654c7189ab26dc95afa677885b401b405044377c98bc20504c2ac0a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.11/shipyard_0.4.11_linux_armv7.tar.gz"
    sha256 "6103ad57be74a26c42cceb4a23d8ecea7cc93810aa37262844165b627e0ae35a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.11/shipyard_0.4.11_linux_arm64.tar.gz"
    sha256 "293682776633c2a32b483787d153002fc807f12a60b9ac5e9304ba1aed65d59e"
  end

  def install
    bin.install "shipyard"
  end
end
