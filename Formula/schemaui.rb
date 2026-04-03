class Schemaui < Formula
  desc "Render JSON Schemas as TUIs and embedded web editors"
  homepage "https://github.com/YuniqueUnic/schemaui"
  url "https://github.com/YuniqueUnic/schemaui/archive/refs/tags/schemaui-cli-v0.4.2.tar.gz"
  sha256 "ee0ac261cb0e3691db221b8d5c21bdd34032dab1a31e81242d0b8af6833cc44b"
  license "MIT OR Apache-2.0"
  head "https://github.com/YuniqueUnic/schemaui.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "schemaui-cli"), "--features", "full"
  end

  test do
    assert_equal "schemaui #{version}\n", shell_output("#{bin}/schemaui --version")
  end
end
