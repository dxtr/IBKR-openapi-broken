module IBKR.Types.Contract where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified IBKR.Common
data Contract
instance Show Contract
instance Eq Contract
instance FromJSON Contract
instance ToJSON Contract
data ContractRules
instance Show ContractRules
instance Eq ContractRules
instance FromJSON ContractRules
instance ToJSON ContractRules
