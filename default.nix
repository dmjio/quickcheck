{ mkDerivation, array, base, containers, random, stdenv
, transformers
}:
mkDerivation {
  pname = "QuickCheck";
  version = "2.9.2";
  src = ./.;
  libraryHaskellDepends = [
    array base containers random transformers
  ];
  testHaskellDepends = [ base ];
  homepage = "https://github.com/nick8325/quickcheck";
  description = "Automatic testing of Haskell programs";
  license = stdenv.lib.licenses.bsd3;
}
