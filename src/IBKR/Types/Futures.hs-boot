module IBKR.Types.Futures where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified IBKR.Common
data FuturesItem
instance Show FuturesItem
instance Eq FuturesItem
instance FromJSON FuturesItem
instance ToJSON FuturesItem
type Futures = [FuturesItem]
