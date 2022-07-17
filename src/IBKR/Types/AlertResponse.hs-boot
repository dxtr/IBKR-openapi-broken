module IBKR.Types.AlertResponse where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified IBKR.Common
data Alert_response
instance Show Alert_response
instance Eq Alert_response
instance FromJSON Alert_response
instance ToJSON Alert_response
data Alert_responseConditions
instance Show Alert_responseConditions
instance Eq Alert_responseConditions
instance FromJSON Alert_responseConditions
instance ToJSON Alert_responseConditions
