module IBKR.Types.Allocation where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified IBKR.Common
data AllocationItem
instance Show AllocationItem
instance Eq AllocationItem
instance FromJSON AllocationItem
instance ToJSON AllocationItem
data AllocationItemAssetClass
instance Show AllocationItemAssetClass
instance Eq AllocationItemAssetClass
instance FromJSON AllocationItemAssetClass
instance ToJSON AllocationItemAssetClass
data AllocationItemAssetClassLong
instance Show AllocationItemAssetClassLong
instance Eq AllocationItemAssetClassLong
instance FromJSON AllocationItemAssetClassLong
instance ToJSON AllocationItemAssetClassLong
data AllocationItemAssetClassShort
instance Show AllocationItemAssetClassShort
instance Eq AllocationItemAssetClassShort
instance FromJSON AllocationItemAssetClassShort
instance ToJSON AllocationItemAssetClassShort
data AllocationItemGroup
instance Show AllocationItemGroup
instance Eq AllocationItemGroup
instance FromJSON AllocationItemGroup
instance ToJSON AllocationItemGroup
data AllocationItemGroupLong
instance Show AllocationItemGroupLong
instance Eq AllocationItemGroupLong
instance FromJSON AllocationItemGroupLong
instance ToJSON AllocationItemGroupLong
data AllocationItemGroupShort
instance Show AllocationItemGroupShort
instance Eq AllocationItemGroupShort
instance FromJSON AllocationItemGroupShort
instance ToJSON AllocationItemGroupShort
data AllocationItemSector
instance Show AllocationItemSector
instance Eq AllocationItemSector
instance FromJSON AllocationItemSector
instance ToJSON AllocationItemSector
data AllocationItemSectorLong
instance Show AllocationItemSectorLong
instance Eq AllocationItemSectorLong
instance FromJSON AllocationItemSectorLong
instance ToJSON AllocationItemSectorLong
data AllocationItemSectorShort
instance Show AllocationItemSectorShort
instance Eq AllocationItemSectorShort
instance FromJSON AllocationItemSectorShort
instance ToJSON AllocationItemSectorShort
type Allocation = [AllocationItem]