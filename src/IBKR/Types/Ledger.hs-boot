module IBKR.Types.Ledger where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified IBKR.Common
data Ledger
instance Show Ledger
instance Eq Ledger
instance FromJSON Ledger
instance ToJSON Ledger
