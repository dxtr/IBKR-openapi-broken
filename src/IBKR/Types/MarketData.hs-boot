module IBKR.Types.MarketData where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified IBKR.Common
data Market_data
instance Show Market_data
instance Eq Market_data
instance FromJSON Market_data
instance ToJSON Market_data
