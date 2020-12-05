{ pkgs ? import ./haskell-pkgs.nix
, haskellCompiler ? "ghc8101"
}:
pkgs.haskell-nix.cabalProject {
  src = pkgs.haskell-nix.haskellLib.cleanGit {
    name = "{{cookiecutter.project_name}}";
    src = ./.;
  };
  compiler-nix-name = haskellCompiler;
}