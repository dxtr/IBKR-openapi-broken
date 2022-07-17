module IBKR.Types.Account where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified IBKR.Common
data Account
instance Show Account
instance Eq Account
instance FromJSON Account
instance ToJSON Account
data AccountClearingStatus
instance Show AccountClearingStatus
instance Eq AccountClearingStatus
instance FromJSON AccountClearingStatus
instance ToJSON AccountClearingStatus
data AccountCurrency
instance Show AccountCurrency
instance Eq AccountCurrency
instance FromJSON AccountCurrency
instance ToJSON AccountCurrency
data AccountDisplayName
instance Show AccountDisplayName
instance Eq AccountDisplayName
instance FromJSON AccountDisplayName
instance ToJSON AccountDisplayName
data AccountParent
instance Show AccountParent
instance Eq AccountParent
instance FromJSON AccountParent
instance ToJSON AccountParent
data AccountType
instance Show AccountType
instance Eq AccountType
instance FromJSON AccountType
instance ToJSON AccountType
