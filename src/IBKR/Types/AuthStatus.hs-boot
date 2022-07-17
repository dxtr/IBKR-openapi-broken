module IBKR.Types.AuthStatus where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified IBKR.Common
data AuthStatus
instance Show AuthStatus
instance Eq AuthStatus
instance FromJSON AuthStatus
instance ToJSON AuthStatus
