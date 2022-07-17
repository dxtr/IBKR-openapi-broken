-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Allocation
module IBKR.Types.Allocation where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified IBKR.Common
import IBKR.TypeAlias

-- | Defines the object schema located at @components.schemas.allocation.items@ in the specification.
-- 
-- allocation
data AllocationItem = AllocationItem {
  -- | assetClass: portfolio allocation by asset class
  allocationItemAssetClass :: (GHC.Maybe.Maybe AllocationItemAssetClass)
  -- | group: portfolio allocation by group
  , allocationItemGroup :: (GHC.Maybe.Maybe AllocationItemGroup)
  -- | sector: portfolio allocation by sector
  , allocationItemSector :: (GHC.Maybe.Maybe AllocationItemSector)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AllocationItem
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("assetClass" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClass obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group" Data.Aeson.Types.ToJSON..=)) (allocationItemGroup obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sector" Data.Aeson.Types.ToJSON..=)) (allocationItemSector obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("assetClass" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClass obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group" Data.Aeson.Types.ToJSON..=)) (allocationItemGroup obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sector" Data.Aeson.Types.ToJSON..=)) (allocationItemSector obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON AllocationItem
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AllocationItem" (\obj -> ((GHC.Base.pure AllocationItem GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "assetClass")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "group")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sector"))
-- | Create a new 'AllocationItem' with all required fields.
mkAllocationItem :: AllocationItem
mkAllocationItem = AllocationItem{allocationItemAssetClass = GHC.Maybe.Nothing,
                                  allocationItemGroup = GHC.Maybe.Nothing,
                                  allocationItemSector = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.allocation.items.properties.assetClass@ in the specification.
-- 
-- portfolio allocation by asset class
data AllocationItemAssetClass = AllocationItemAssetClass {
  -- | long: long positions allocation
  allocationItemAssetClassLong :: (GHC.Maybe.Maybe AllocationItemAssetClassLong)
  -- | short: short positions allocation
  , allocationItemAssetClassShort :: (GHC.Maybe.Maybe AllocationItemAssetClassShort)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AllocationItemAssetClass
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("long" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassLong obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("short" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassShort obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("long" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassLong obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("short" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassShort obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON AllocationItemAssetClass
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AllocationItemAssetClass" (\obj -> (GHC.Base.pure AllocationItemAssetClass GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "long")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "short"))
-- | Create a new 'AllocationItemAssetClass' with all required fields.
mkAllocationItemAssetClass :: AllocationItemAssetClass
mkAllocationItemAssetClass = AllocationItemAssetClass{allocationItemAssetClassLong = GHC.Maybe.Nothing,
                                                      allocationItemAssetClassShort = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.allocation.items.properties.assetClass.properties.long@ in the specification.
-- 
-- long positions allocation
data AllocationItemAssetClassLong = AllocationItemAssetClassLong {
  -- | BOND
  allocationItemAssetClassLongBOND :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | CASH
  , allocationItemAssetClassLongCASH :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | FUT
  , allocationItemAssetClassLongFUT :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | OPT
  , allocationItemAssetClassLongOPT :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | STK
  , allocationItemAssetClassLongSTK :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | WAR
  , allocationItemAssetClassLongWAR :: (GHC.Maybe.Maybe GHC.Types.Double)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AllocationItemAssetClassLong
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("BOND" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassLongBOND obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("CASH" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassLongCASH obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("FUT" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassLongFUT obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("OPT" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassLongOPT obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("STK" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassLongSTK obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("WAR" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassLongWAR obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("BOND" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassLongBOND obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("CASH" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassLongCASH obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("FUT" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassLongFUT obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("OPT" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassLongOPT obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("STK" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassLongSTK obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("WAR" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassLongWAR obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON AllocationItemAssetClassLong
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AllocationItemAssetClassLong" (\obj -> (((((GHC.Base.pure AllocationItemAssetClassLong GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "BOND")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "CASH")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "FUT")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "OPT")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "STK")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "WAR"))
-- | Create a new 'AllocationItemAssetClassLong' with all required fields.
mkAllocationItemAssetClassLong :: AllocationItemAssetClassLong
mkAllocationItemAssetClassLong = AllocationItemAssetClassLong{allocationItemAssetClassLongBOND = GHC.Maybe.Nothing,
                                                              allocationItemAssetClassLongCASH = GHC.Maybe.Nothing,
                                                              allocationItemAssetClassLongFUT = GHC.Maybe.Nothing,
                                                              allocationItemAssetClassLongOPT = GHC.Maybe.Nothing,
                                                              allocationItemAssetClassLongSTK = GHC.Maybe.Nothing,
                                                              allocationItemAssetClassLongWAR = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.allocation.items.properties.assetClass.properties.short@ in the specification.
-- 
-- short positions allocation
data AllocationItemAssetClassShort = AllocationItemAssetClassShort {
  -- | BOND
  allocationItemAssetClassShortBOND :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | CASH
  , allocationItemAssetClassShortCASH :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | FUT
  , allocationItemAssetClassShortFUT :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | OPT
  , allocationItemAssetClassShortOPT :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | STK
  , allocationItemAssetClassShortSTK :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | WAR
  , allocationItemAssetClassShortWAR :: (GHC.Maybe.Maybe GHC.Types.Double)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AllocationItemAssetClassShort
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("BOND" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassShortBOND obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("CASH" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassShortCASH obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("FUT" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassShortFUT obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("OPT" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassShortOPT obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("STK" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassShortSTK obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("WAR" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassShortWAR obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("BOND" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassShortBOND obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("CASH" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassShortCASH obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("FUT" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassShortFUT obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("OPT" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassShortOPT obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("STK" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassShortSTK obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("WAR" Data.Aeson.Types.ToJSON..=)) (allocationItemAssetClassShortWAR obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON AllocationItemAssetClassShort
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AllocationItemAssetClassShort" (\obj -> (((((GHC.Base.pure AllocationItemAssetClassShort GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "BOND")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "CASH")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "FUT")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "OPT")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "STK")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "WAR"))
-- | Create a new 'AllocationItemAssetClassShort' with all required fields.
mkAllocationItemAssetClassShort :: AllocationItemAssetClassShort
mkAllocationItemAssetClassShort = AllocationItemAssetClassShort{allocationItemAssetClassShortBOND = GHC.Maybe.Nothing,
                                                                allocationItemAssetClassShortCASH = GHC.Maybe.Nothing,
                                                                allocationItemAssetClassShortFUT = GHC.Maybe.Nothing,
                                                                allocationItemAssetClassShortOPT = GHC.Maybe.Nothing,
                                                                allocationItemAssetClassShortSTK = GHC.Maybe.Nothing,
                                                                allocationItemAssetClassShortWAR = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.allocation.items.properties.group@ in the specification.
-- 
-- portfolio allocation by group
data AllocationItemGroup = AllocationItemGroup {
  -- | long: long positions allocation
  allocationItemGroupLong :: (GHC.Maybe.Maybe AllocationItemGroupLong)
  -- | short: short positions allocation
  , allocationItemGroupShort :: (GHC.Maybe.Maybe AllocationItemGroupShort)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AllocationItemGroup
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("long" Data.Aeson.Types.ToJSON..=)) (allocationItemGroupLong obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("short" Data.Aeson.Types.ToJSON..=)) (allocationItemGroupShort obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("long" Data.Aeson.Types.ToJSON..=)) (allocationItemGroupLong obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("short" Data.Aeson.Types.ToJSON..=)) (allocationItemGroupShort obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON AllocationItemGroup
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AllocationItemGroup" (\obj -> (GHC.Base.pure AllocationItemGroup GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "long")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "short"))
-- | Create a new 'AllocationItemGroup' with all required fields.
mkAllocationItemGroup :: AllocationItemGroup
mkAllocationItemGroup = AllocationItemGroup{allocationItemGroupLong = GHC.Maybe.Nothing,
                                            allocationItemGroupShort = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.allocation.items.properties.group.properties.long@ in the specification.
-- 
-- long positions allocation
data AllocationItemGroupLong = AllocationItemGroupLong {
  -- | Apparel
  allocationItemGroupLongApparel :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | Chemicals
  , allocationItemGroupLongChemicals :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | Communications
  , allocationItemGroupLongCommunications :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | Computers
  , allocationItemGroupLongComputers :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | Others
  , allocationItemGroupLongOthers :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | Semiconductors
  , allocationItemGroupLongSemiconductors :: (GHC.Maybe.Maybe GHC.Types.Double)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AllocationItemGroupLong
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Apparel" Data.Aeson.Types.ToJSON..=)) (allocationItemGroupLongApparel obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Chemicals" Data.Aeson.Types.ToJSON..=)) (allocationItemGroupLongChemicals obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Communications" Data.Aeson.Types.ToJSON..=)) (allocationItemGroupLongCommunications obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Computers" Data.Aeson.Types.ToJSON..=)) (allocationItemGroupLongComputers obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Others" Data.Aeson.Types.ToJSON..=)) (allocationItemGroupLongOthers obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Semiconductors" Data.Aeson.Types.ToJSON..=)) (allocationItemGroupLongSemiconductors obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Apparel" Data.Aeson.Types.ToJSON..=)) (allocationItemGroupLongApparel obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Chemicals" Data.Aeson.Types.ToJSON..=)) (allocationItemGroupLongChemicals obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Communications" Data.Aeson.Types.ToJSON..=)) (allocationItemGroupLongCommunications obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Computers" Data.Aeson.Types.ToJSON..=)) (allocationItemGroupLongComputers obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Others" Data.Aeson.Types.ToJSON..=)) (allocationItemGroupLongOthers obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Semiconductors" Data.Aeson.Types.ToJSON..=)) (allocationItemGroupLongSemiconductors obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON AllocationItemGroupLong
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AllocationItemGroupLong" (\obj -> (((((GHC.Base.pure AllocationItemGroupLong GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "Apparel")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "Chemicals")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "Communications")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "Computers")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "Others")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "Semiconductors"))
-- | Create a new 'AllocationItemGroupLong' with all required fields.
mkAllocationItemGroupLong :: AllocationItemGroupLong
mkAllocationItemGroupLong = AllocationItemGroupLong{allocationItemGroupLongApparel = GHC.Maybe.Nothing,
                                                    allocationItemGroupLongChemicals = GHC.Maybe.Nothing,
                                                    allocationItemGroupLongCommunications = GHC.Maybe.Nothing,
                                                    allocationItemGroupLongComputers = GHC.Maybe.Nothing,
                                                    allocationItemGroupLongOthers = GHC.Maybe.Nothing,
                                                    allocationItemGroupLongSemiconductors = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.allocation.items.properties.group.properties.short@ in the specification.
-- 
-- short positions allocation
data AllocationItemGroupShort = AllocationItemGroupShort {
  -- | Airlines
  allocationItemGroupShortAirlines :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | Banks
  , allocationItemGroupShortBanks :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | Internet
  , allocationItemGroupShortInternet :: (GHC.Maybe.Maybe GHC.Types.Double)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AllocationItemGroupShort
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Airlines" Data.Aeson.Types.ToJSON..=)) (allocationItemGroupShortAirlines obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Banks" Data.Aeson.Types.ToJSON..=)) (allocationItemGroupShortBanks obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Internet" Data.Aeson.Types.ToJSON..=)) (allocationItemGroupShortInternet obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Airlines" Data.Aeson.Types.ToJSON..=)) (allocationItemGroupShortAirlines obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Banks" Data.Aeson.Types.ToJSON..=)) (allocationItemGroupShortBanks obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Internet" Data.Aeson.Types.ToJSON..=)) (allocationItemGroupShortInternet obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON AllocationItemGroupShort
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AllocationItemGroupShort" (\obj -> ((GHC.Base.pure AllocationItemGroupShort GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "Airlines")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "Banks")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "Internet"))
-- | Create a new 'AllocationItemGroupShort' with all required fields.
mkAllocationItemGroupShort :: AllocationItemGroupShort
mkAllocationItemGroupShort = AllocationItemGroupShort{allocationItemGroupShortAirlines = GHC.Maybe.Nothing,
                                                      allocationItemGroupShortBanks = GHC.Maybe.Nothing,
                                                      allocationItemGroupShortInternet = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.allocation.items.properties.sector@ in the specification.
-- 
-- portfolio allocation by sector
data AllocationItemSector = AllocationItemSector {
  -- | long: long positions allocation
  allocationItemSectorLong :: (GHC.Maybe.Maybe AllocationItemSectorLong)
  -- | short: short positions allocation
  , allocationItemSectorShort :: (GHC.Maybe.Maybe AllocationItemSectorShort)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AllocationItemSector
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("long" Data.Aeson.Types.ToJSON..=)) (allocationItemSectorLong obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("short" Data.Aeson.Types.ToJSON..=)) (allocationItemSectorShort obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("long" Data.Aeson.Types.ToJSON..=)) (allocationItemSectorLong obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("short" Data.Aeson.Types.ToJSON..=)) (allocationItemSectorShort obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON AllocationItemSector
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AllocationItemSector" (\obj -> (GHC.Base.pure AllocationItemSector GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "long")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "short"))
-- | Create a new 'AllocationItemSector' with all required fields.
mkAllocationItemSector :: AllocationItemSector
mkAllocationItemSector = AllocationItemSector{allocationItemSectorLong = GHC.Maybe.Nothing,
                                              allocationItemSectorShort = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.allocation.items.properties.sector.properties.long@ in the specification.
-- 
-- long positions allocation
data AllocationItemSectorLong = AllocationItemSectorLong {
  -- | Communications
  allocationItemSectorLongCommunications :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | Energy
  , allocationItemSectorLongEnergy :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | Financial
  , allocationItemSectorLongFinancial :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | Others
  , allocationItemSectorLongOthers :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | Technology
  , allocationItemSectorLongTechnology :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | Utilities
  , allocationItemSectorLongUtilities :: (GHC.Maybe.Maybe GHC.Types.Double)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AllocationItemSectorLong
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Communications" Data.Aeson.Types.ToJSON..=)) (allocationItemSectorLongCommunications obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Energy" Data.Aeson.Types.ToJSON..=)) (allocationItemSectorLongEnergy obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Financial" Data.Aeson.Types.ToJSON..=)) (allocationItemSectorLongFinancial obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Others" Data.Aeson.Types.ToJSON..=)) (allocationItemSectorLongOthers obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Technology" Data.Aeson.Types.ToJSON..=)) (allocationItemSectorLongTechnology obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Utilities" Data.Aeson.Types.ToJSON..=)) (allocationItemSectorLongUtilities obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Communications" Data.Aeson.Types.ToJSON..=)) (allocationItemSectorLongCommunications obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Energy" Data.Aeson.Types.ToJSON..=)) (allocationItemSectorLongEnergy obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Financial" Data.Aeson.Types.ToJSON..=)) (allocationItemSectorLongFinancial obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Others" Data.Aeson.Types.ToJSON..=)) (allocationItemSectorLongOthers obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Technology" Data.Aeson.Types.ToJSON..=)) (allocationItemSectorLongTechnology obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Utilities" Data.Aeson.Types.ToJSON..=)) (allocationItemSectorLongUtilities obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON AllocationItemSectorLong
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AllocationItemSectorLong" (\obj -> (((((GHC.Base.pure AllocationItemSectorLong GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "Communications")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "Energy")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "Financial")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "Others")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "Technology")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "Utilities"))
-- | Create a new 'AllocationItemSectorLong' with all required fields.
mkAllocationItemSectorLong :: AllocationItemSectorLong
mkAllocationItemSectorLong = AllocationItemSectorLong{allocationItemSectorLongCommunications = GHC.Maybe.Nothing,
                                                      allocationItemSectorLongEnergy = GHC.Maybe.Nothing,
                                                      allocationItemSectorLongFinancial = GHC.Maybe.Nothing,
                                                      allocationItemSectorLongOthers = GHC.Maybe.Nothing,
                                                      allocationItemSectorLongTechnology = GHC.Maybe.Nothing,
                                                      allocationItemSectorLongUtilities = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.allocation.items.properties.sector.properties.short@ in the specification.
-- 
-- short positions allocation
data AllocationItemSectorShort = AllocationItemSectorShort {
  -- | Consumer
  allocationItemSectorShortConsumer :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | Diversified
  , allocationItemSectorShortDiversified :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | Industrial
  , allocationItemSectorShortIndustrial :: (GHC.Maybe.Maybe GHC.Types.Double)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AllocationItemSectorShort
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Consumer" Data.Aeson.Types.ToJSON..=)) (allocationItemSectorShortConsumer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Diversified" Data.Aeson.Types.ToJSON..=)) (allocationItemSectorShortDiversified obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Industrial" Data.Aeson.Types.ToJSON..=)) (allocationItemSectorShortIndustrial obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Consumer" Data.Aeson.Types.ToJSON..=)) (allocationItemSectorShortConsumer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Diversified" Data.Aeson.Types.ToJSON..=)) (allocationItemSectorShortDiversified obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("Industrial" Data.Aeson.Types.ToJSON..=)) (allocationItemSectorShortIndustrial obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON AllocationItemSectorShort
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AllocationItemSectorShort" (\obj -> ((GHC.Base.pure AllocationItemSectorShort GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "Consumer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "Diversified")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "Industrial"))
-- | Create a new 'AllocationItemSectorShort' with all required fields.
mkAllocationItemSectorShort :: AllocationItemSectorShort
mkAllocationItemSectorShort = AllocationItemSectorShort{allocationItemSectorShortConsumer = GHC.Maybe.Nothing,
                                                        allocationItemSectorShortDiversified = GHC.Maybe.Nothing,
                                                        allocationItemSectorShortIndustrial = GHC.Maybe.Nothing}
-- | Defines an alias for the schema located at @components.schemas.allocation@ in the specification.
-- 
-- 
type Allocation = [AllocationItem]
