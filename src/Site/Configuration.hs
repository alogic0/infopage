module Site.Configuration (config, feedConfig) where

import Hakyll

ignoreFile' :: String -> Bool
ignoreFile' ".htaccess" = False
ignoreFile' path        = ignoreFile defaultConfiguration path

config :: Configuration
config = defaultConfiguration { ignoreFile = ignoreFile' }

-- Details for the atom feed.
feedConfig :: FeedConfiguration
feedConfig = FeedConfiguration
  { feedTitle       = "компания Инфоресурс"
  , feedDescription = "новости компании Инфоресурс"
  , feedAuthorName  = "Инфоресурс"
  , feedAuthorEmail = "alogic0@gmail.com"
  , feedRoot        = "http://lgz.pp.ua"
  }
