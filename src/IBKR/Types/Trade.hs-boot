module IBKR.Types.Trade where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified IBKR.Common
data Trade
instance Show Trade
instance Eq Trade
instance FromJSON Trade
instance ToJSON Trade
data TradeSide
instance Show TradeSide
instance Eq TradeSide
instance FromJSON TradeSide
instance ToJSON TradeSide
