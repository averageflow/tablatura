{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
module Handler.Artists where

import Import
import Text.Lucius ( luciusFile )


getArtistsR :: Handler Html
getArtistsR = do
    defaultLayout $ do
        let artistLetters = [toUpper [x] | x <-  ['a' .. 'z']]
        byLetter <- lookupGetParam "by-letter"
        aDomId <- newIdent
        setTitle "Tablatura"
        $(widgetFile "artists")
        toWidget $(luciusFile "templates/artists.lucius")
