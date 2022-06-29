# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.4.5"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.5/shipyard_0.4.5_darwin_x86_64.zip"
    sha256 "7f3ed67fdb872fcf5bd5ea8832c8d79979024483df4dedc2457ab95749b9535c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.5/shipyard_0.4.5_darwin_arm64.zip"
    sha256 "5704f82a9d25aa2fdf1513364cc11ecf2e965d81d01d4a2802bd0d4e23e6c13f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.5/shipyard_0.4.5_linux_x86_64.tar.gz"
    sha256 "64c11c09bf649f996abe6f4e3069db1154616837c52147bfcc6dafd9a85a28b1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.5/shipyard_0.4.5_linux_armv7.tar.gz"
    sha256 "d13f2a3d72170c00f07a74e5111b75b71d6932fde75f4aa7efc81cf44cdcad7f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.5/shipyard_0.4.5_linux_arm64.tar.gz"
    sha256 "02fbbcfc9d677b2c352fffafb0eb2516259c9c14fa3d86483220a9c0c10a3471"
  end

  def install
    bin.install "shipyard"
  end
end
