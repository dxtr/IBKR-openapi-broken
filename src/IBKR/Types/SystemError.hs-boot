module IBKR.Types.SystemError where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified IBKR.Common
data System_error
instance Show System_error
instance Eq System_error
instance FromJSON System_error
instance ToJSON System_error
