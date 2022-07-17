let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.3-20220712/packages.dhall sha256:ffc496e19c93f211b990f52e63e8c16f31273d4369dbae37c7cf6ea852d4442f

let additions =
      { uuid =
        { dependencies =
              [ "prelude"
              , "aff"
              , "effect"
              , "maybe"
              , "partial"
              , "spec"
              , "strings"
              ]
            : List Text
        , repo = "https://github.com/megamaddu/purescript-uuid.git"
        , version = "v9.0.0"
        }
      }

in  upstream // additions
