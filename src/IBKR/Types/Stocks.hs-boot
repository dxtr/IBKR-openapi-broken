module IBKR.Types.Stocks where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified IBKR.Common
data StocksItem
instance Show StocksItem
instance Eq StocksItem
instance FromJSON StocksItem
instance ToJSON StocksItem
data StocksItemContracts
instance Show StocksItemContracts
instance Eq StocksItemContracts
instance FromJSON StocksItemContracts
instance ToJSON StocksItemContracts
type Stocks = [StocksItem]
