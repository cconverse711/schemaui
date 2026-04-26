class Schemaui < Formula
  desc "Render JSON Schemas as TUIs and embedded web editors"
  homepage "https://github.com/YuniqueUnic/schemaui"
  url "https://github.com/YuniqueUnic/schemaui/archive/refs/tags/schemaui-cli-v0.5.3.tar.gz"
  sha256 "f87d406067302b397678c1f71f13aa316637876a9fc16bccd0cd8f819d836c1e"
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
