class InksgameHelper < Formula
    desc "dependency for inksgame"
    homepage "https://codeberg.org/Luca295/inksgame-helper"
    url "https://codeberg.org/Luca295/inksgame-helper/archive/alpha2.zip"
  
    depends_on "node" => [:build, :test]

    def install
        system "npm", "install", *std_npm_args
        bin.install_symlink libexec/"bin/inksgame-helper"
    end
end
