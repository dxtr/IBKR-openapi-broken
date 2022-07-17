module IBKR.Types.Secdef where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified IBKR.Common
data SecdefItem
instance Show SecdefItem
instance Eq SecdefItem
instance FromJSON SecdefItem
instance ToJSON SecdefItem
data SecdefItemIncrementRules
instance Show SecdefItemIncrementRules
instance Eq SecdefItemIncrementRules
instance FromJSON SecdefItemIncrementRules
instance ToJSON SecdefItemIncrementRules
type Secdef = [SecdefItem]
