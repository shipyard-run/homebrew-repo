# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.4.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.2/shipyard_0.4.2_darwin_x86_64.zip"
    sha256 "6bc77dba2cfd36f1f0ecb46e54f4d1beb043528ab101e9bac082dd63e46ddb7f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.2/shipyard_0.4.2_darwin_arm64.zip"
    sha256 "11681d49d1cfec4a3bacc91432bd6607eef680fbcda16cbabfd93e1e9cac19aa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.2/shipyard_0.4.2_linux_x86_64.tar.gz"
    sha256 "2363ac3a05fdb7862b6291896b7e87ba38193cc4a456cb8e19c8d9deec3c86ca"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.2/shipyard_0.4.2_linux_armv7.tar.gz"
    sha256 "dde00c28e113c38352f054fe12fdc3467f0b97fb9faeb8d59705b28950f738e4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.4.2/shipyard_0.4.2_linux_arm64.tar.gz"
    sha256 "21240336b9cea27f9bc1a9db4868c3b53c5b2a394399f0af862b4a30985727e6"
  end

  def install
    bin.install "shipyard"
  end
end
