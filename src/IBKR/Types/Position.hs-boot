module IBKR.Types.Position where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified IBKR.Common
data PositionItem
instance Show PositionItem
instance Eq PositionItem
instance FromJSON PositionItem
instance ToJSON PositionItem
type Position = [PositionItem]
