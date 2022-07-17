module IBKR.Types.Notifications where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified IBKR.Common
data NotificationsItem
instance Show NotificationsItem
instance Eq NotificationsItem
instance FromJSON NotificationsItem
instance ToJSON NotificationsItem
type Notifications = [NotificationsItem]
