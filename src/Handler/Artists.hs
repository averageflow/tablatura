{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
module Handler.Artists where

import Import
import Yesod.Form.Bootstrap3 (BootstrapFormLayout (..), renderBootstrap3)
import Text.Julius (RawJS (..))
import Text.Lucius

getArtistsR :: Handler Html
getArtistsR = do
    defaultLayout $ do
        aDomId <- newIdent
        setTitle "Tablatura"
        $(widgetFile "artists")
        toWidget $(luciusFile "templates/artists.lucius")
