module IBKR.Types.Summary where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified IBKR.Common
data Summary
instance Show Summary
instance Eq Summary
instance FromJSON Summary
instance ToJSON Summary
