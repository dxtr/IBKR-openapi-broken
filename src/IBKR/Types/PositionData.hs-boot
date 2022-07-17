module IBKR.Types.PositionData where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified IBKR.Common
data Position_data
instance Show Position_data
instance Eq Position_data
instance FromJSON Position_data
instance ToJSON Position_data
