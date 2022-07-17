module IntroComponent
where

import Prelude

import Effect 
import Effect.Aff (Aff)
import Halogen as H
import Halogen.Aff as HA
import Halogen.HTML as HH
import Halogen.VDom.Driver (runUI)


type State = { current :: String
             }

data Action = Noop

main :: Effect Unit
main =
  HA.runHalogenAff do
    body <- HA.awaitBody
    runUI introComponent unit body


introComponent :: forall q i o. H.Component q i o Aff
introComponent = 
  H.mkComponent
    { initialState:
        \_ ->{ current: ""
             }
    , render
    , eval:
        H.mkEval
          $ H.defaultEval
              { handleAction = handleAction
              }
    }
    

      
render :: forall s. State -> H.ComponentHTML Action s Aff
render _ =
  HH.div_ $
  [ HH.h1_ [ HH.text "Login"] ]

    
handleAction :: forall output s. Action → H.HalogenM State Action s output Aff Unit
handleAction = case _ of
  Noop -> pure unit
