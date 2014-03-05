module Handler.Mirror where

import Import
import Data.Text

getMirrorR :: Handler Html
getMirrorR = defaultLayout $(widgetFile "mirror")

postMirrorR :: Handler Html
postMirrorR = do
    postedText <- runInputPost $ ireq textField "content"
    defaultLayout $(widgetFile "posted")
