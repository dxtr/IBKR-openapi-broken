-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation get_iserver_scanner_params
module IBKR.Operations.Get_iserver_scanner_params where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified IBKR.Common
import IBKR.Types

-- | > GET /iserver/scanner/params
-- 
-- Returns an object contains four lists contain all parameters for scanners
get_iserver_scanner_params :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.ClientT m (Network.HTTP.Client.Types.Response Get_iserver_scanner_paramsResponse) -- ^ Monadic computation which returns the result of the operation
get_iserver_scanner_params = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Get_iserver_scanner_paramsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_iserver_scanner_paramsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                            Get_iserver_scanner_paramsResponseBody200)
                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (IBKR.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/iserver/scanner/params") GHC.Base.mempty)
-- | Represents a response of the operation 'get_iserver_scanner_params'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Get_iserver_scanner_paramsResponseError' is used.
data Get_iserver_scanner_paramsResponse =
   Get_iserver_scanner_paramsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Get_iserver_scanner_paramsResponse200 Get_iserver_scanner_paramsResponseBody200 -- ^ An object contains lists
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/iserver\/scanner\/params.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data Get_iserver_scanner_paramsResponseBody200 = Get_iserver_scanner_paramsResponseBody200 {
  -- | filter_list
  get_iserver_scanner_paramsResponseBody200Filter_list :: (GHC.Maybe.Maybe ([Get_iserver_scanner_paramsResponseBody200Filter_list]))
  -- | instrument_list
  , get_iserver_scanner_paramsResponseBody200Instrument_list :: (GHC.Maybe.Maybe ([Get_iserver_scanner_paramsResponseBody200Instrument_list]))
  -- | location_tree
  , get_iserver_scanner_paramsResponseBody200Location_tree :: (GHC.Maybe.Maybe ([Get_iserver_scanner_paramsResponseBody200Location_tree]))
  -- | scan_type_list
  , get_iserver_scanner_paramsResponseBody200Scan_type_list :: (GHC.Maybe.Maybe ([Get_iserver_scanner_paramsResponseBody200Scan_type_list]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_iserver_scanner_paramsResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("filter_list" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Filter_list obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("instrument_list" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Instrument_list obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("location_tree" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Location_tree obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("scan_type_list" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Scan_type_list obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("filter_list" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Filter_list obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("instrument_list" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Instrument_list obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("location_tree" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Location_tree obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("scan_type_list" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Scan_type_list obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Get_iserver_scanner_paramsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_iserver_scanner_paramsResponseBody200" (\obj -> (((GHC.Base.pure Get_iserver_scanner_paramsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "filter_list")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "instrument_list")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "location_tree")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "scan_type_list"))
-- | Create a new 'Get_iserver_scanner_paramsResponseBody200' with all required fields.
mkGet_iserver_scanner_paramsResponseBody200 :: Get_iserver_scanner_paramsResponseBody200
mkGet_iserver_scanner_paramsResponseBody200 = Get_iserver_scanner_paramsResponseBody200{get_iserver_scanner_paramsResponseBody200Filter_list = GHC.Maybe.Nothing,
                                                                                        get_iserver_scanner_paramsResponseBody200Instrument_list = GHC.Maybe.Nothing,
                                                                                        get_iserver_scanner_paramsResponseBody200Location_tree = GHC.Maybe.Nothing,
                                                                                        get_iserver_scanner_paramsResponseBody200Scan_type_list = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/iserver\/scanner\/params.GET.responses.200.content.application\/json.schema.properties.filter_list.items@ in the specification.
-- 
-- 
data Get_iserver_scanner_paramsResponseBody200Filter_list = Get_iserver_scanner_paramsResponseBody200Filter_list {
  -- | code
  get_iserver_scanner_paramsResponseBody200Filter_listCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | display_name
  , get_iserver_scanner_paramsResponseBody200Filter_listDisplay_name :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | group
  , get_iserver_scanner_paramsResponseBody200Filter_listGroup :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | type
  , get_iserver_scanner_paramsResponseBody200Filter_listType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_iserver_scanner_paramsResponseBody200Filter_list
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Filter_listCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("display_name" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Filter_listDisplay_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Filter_listGroup obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Filter_listType obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Filter_listCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("display_name" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Filter_listDisplay_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("group" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Filter_listGroup obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Filter_listType obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Get_iserver_scanner_paramsResponseBody200Filter_list
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_iserver_scanner_paramsResponseBody200Filter_list" (\obj -> (((GHC.Base.pure Get_iserver_scanner_paramsResponseBody200Filter_list GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "display_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "group")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type"))
-- | Create a new 'Get_iserver_scanner_paramsResponseBody200Filter_list' with all required fields.
mkGet_iserver_scanner_paramsResponseBody200Filter_list :: Get_iserver_scanner_paramsResponseBody200Filter_list
mkGet_iserver_scanner_paramsResponseBody200Filter_list = Get_iserver_scanner_paramsResponseBody200Filter_list{get_iserver_scanner_paramsResponseBody200Filter_listCode = GHC.Maybe.Nothing,
                                                                                                              get_iserver_scanner_paramsResponseBody200Filter_listDisplay_name = GHC.Maybe.Nothing,
                                                                                                              get_iserver_scanner_paramsResponseBody200Filter_listGroup = GHC.Maybe.Nothing,
                                                                                                              get_iserver_scanner_paramsResponseBody200Filter_listType = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/iserver\/scanner\/params.GET.responses.200.content.application\/json.schema.properties.instrument_list.items@ in the specification.
-- 
-- 
data Get_iserver_scanner_paramsResponseBody200Instrument_list = Get_iserver_scanner_paramsResponseBody200Instrument_list {
  -- | display_name
  get_iserver_scanner_paramsResponseBody200Instrument_listDisplay_name :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | filters
  , get_iserver_scanner_paramsResponseBody200Instrument_listFilters :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | type
  , get_iserver_scanner_paramsResponseBody200Instrument_listType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_iserver_scanner_paramsResponseBody200Instrument_list
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("display_name" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Instrument_listDisplay_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("filters" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Instrument_listFilters obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Instrument_listType obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("display_name" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Instrument_listDisplay_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("filters" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Instrument_listFilters obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Instrument_listType obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Get_iserver_scanner_paramsResponseBody200Instrument_list
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_iserver_scanner_paramsResponseBody200Instrument_list" (\obj -> ((GHC.Base.pure Get_iserver_scanner_paramsResponseBody200Instrument_list GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "display_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "filters")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type"))
-- | Create a new 'Get_iserver_scanner_paramsResponseBody200Instrument_list' with all required fields.
mkGet_iserver_scanner_paramsResponseBody200Instrument_list :: Get_iserver_scanner_paramsResponseBody200Instrument_list
mkGet_iserver_scanner_paramsResponseBody200Instrument_list = Get_iserver_scanner_paramsResponseBody200Instrument_list{get_iserver_scanner_paramsResponseBody200Instrument_listDisplay_name = GHC.Maybe.Nothing,
                                                                                                                      get_iserver_scanner_paramsResponseBody200Instrument_listFilters = GHC.Maybe.Nothing,
                                                                                                                      get_iserver_scanner_paramsResponseBody200Instrument_listType = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/iserver\/scanner\/params.GET.responses.200.content.application\/json.schema.properties.location_tree.items@ in the specification.
-- 
-- 
data Get_iserver_scanner_paramsResponseBody200Location_tree = Get_iserver_scanner_paramsResponseBody200Location_tree {
  -- | display_name
  get_iserver_scanner_paramsResponseBody200Location_treeDisplay_name :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | locations
  , get_iserver_scanner_paramsResponseBody200Location_treeLocations :: (GHC.Maybe.Maybe ([Get_iserver_scanner_paramsResponseBody200Location_treeLocations]))
  -- | type
  , get_iserver_scanner_paramsResponseBody200Location_treeType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_iserver_scanner_paramsResponseBody200Location_tree
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("display_name" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Location_treeDisplay_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("locations" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Location_treeLocations obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Location_treeType obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("display_name" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Location_treeDisplay_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("locations" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Location_treeLocations obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Location_treeType obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Get_iserver_scanner_paramsResponseBody200Location_tree
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_iserver_scanner_paramsResponseBody200Location_tree" (\obj -> ((GHC.Base.pure Get_iserver_scanner_paramsResponseBody200Location_tree GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "display_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "locations")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type"))
-- | Create a new 'Get_iserver_scanner_paramsResponseBody200Location_tree' with all required fields.
mkGet_iserver_scanner_paramsResponseBody200Location_tree :: Get_iserver_scanner_paramsResponseBody200Location_tree
mkGet_iserver_scanner_paramsResponseBody200Location_tree = Get_iserver_scanner_paramsResponseBody200Location_tree{get_iserver_scanner_paramsResponseBody200Location_treeDisplay_name = GHC.Maybe.Nothing,
                                                                                                                  get_iserver_scanner_paramsResponseBody200Location_treeLocations = GHC.Maybe.Nothing,
                                                                                                                  get_iserver_scanner_paramsResponseBody200Location_treeType = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/iserver\/scanner\/params.GET.responses.200.content.application\/json.schema.properties.location_tree.items.properties.locations.items@ in the specification.
-- 
-- 
data Get_iserver_scanner_paramsResponseBody200Location_treeLocations = Get_iserver_scanner_paramsResponseBody200Location_treeLocations {
  -- | display_name
  get_iserver_scanner_paramsResponseBody200Location_treeLocationsDisplay_name :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | type
  , get_iserver_scanner_paramsResponseBody200Location_treeLocationsType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_iserver_scanner_paramsResponseBody200Location_treeLocations
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("display_name" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Location_treeLocationsDisplay_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Location_treeLocationsType obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("display_name" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Location_treeLocationsDisplay_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Location_treeLocationsType obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Get_iserver_scanner_paramsResponseBody200Location_treeLocations
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_iserver_scanner_paramsResponseBody200Location_treeLocations" (\obj -> (GHC.Base.pure Get_iserver_scanner_paramsResponseBody200Location_treeLocations GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "display_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type"))
-- | Create a new 'Get_iserver_scanner_paramsResponseBody200Location_treeLocations' with all required fields.
mkGet_iserver_scanner_paramsResponseBody200Location_treeLocations :: Get_iserver_scanner_paramsResponseBody200Location_treeLocations
mkGet_iserver_scanner_paramsResponseBody200Location_treeLocations = Get_iserver_scanner_paramsResponseBody200Location_treeLocations{get_iserver_scanner_paramsResponseBody200Location_treeLocationsDisplay_name = GHC.Maybe.Nothing,
                                                                                                                                    get_iserver_scanner_paramsResponseBody200Location_treeLocationsType = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/iserver\/scanner\/params.GET.responses.200.content.application\/json.schema.properties.scan_type_list.items@ in the specification.
-- 
-- 
data Get_iserver_scanner_paramsResponseBody200Scan_type_list = Get_iserver_scanner_paramsResponseBody200Scan_type_list {
  -- | code
  get_iserver_scanner_paramsResponseBody200Scan_type_listCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | display_name
  , get_iserver_scanner_paramsResponseBody200Scan_type_listDisplay_name :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | instruments
  , get_iserver_scanner_paramsResponseBody200Scan_type_listInstruments :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_iserver_scanner_paramsResponseBody200Scan_type_list
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Scan_type_listCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("display_name" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Scan_type_listDisplay_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("instruments" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Scan_type_listInstruments obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Scan_type_listCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("display_name" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Scan_type_listDisplay_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("instruments" Data.Aeson.Types.ToJSON..=)) (get_iserver_scanner_paramsResponseBody200Scan_type_listInstruments obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Get_iserver_scanner_paramsResponseBody200Scan_type_list
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_iserver_scanner_paramsResponseBody200Scan_type_list" (\obj -> ((GHC.Base.pure Get_iserver_scanner_paramsResponseBody200Scan_type_list GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "display_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "instruments"))
-- | Create a new 'Get_iserver_scanner_paramsResponseBody200Scan_type_list' with all required fields.
mkGet_iserver_scanner_paramsResponseBody200Scan_type_list :: Get_iserver_scanner_paramsResponseBody200Scan_type_list
mkGet_iserver_scanner_paramsResponseBody200Scan_type_list = Get_iserver_scanner_paramsResponseBody200Scan_type_list{get_iserver_scanner_paramsResponseBody200Scan_type_listCode = GHC.Maybe.Nothing,
                                                                                                                    get_iserver_scanner_paramsResponseBody200Scan_type_listDisplay_name = GHC.Maybe.Nothing,
                                                                                                                    get_iserver_scanner_paramsResponseBody200Scan_type_listInstruments = GHC.Maybe.Nothing}
-- | > GET /iserver/scanner/params
-- 
-- The same as 'get_iserver_scanner_params' but accepts an explicit configuration.
get_iserver_scanner_paramsWithConfiguration :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response Get_iserver_scanner_paramsResponse) -- ^ Monadic computation which returns the result of the operation
get_iserver_scanner_paramsWithConfiguration config = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Get_iserver_scanner_paramsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_iserver_scanner_paramsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Get_iserver_scanner_paramsResponseBody200)
                                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (IBKR.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/iserver/scanner/params") GHC.Base.mempty)
-- | > GET /iserver/scanner/params
-- 
-- The same as 'get_iserver_scanner_params' but returns the raw 'Data.ByteString.Char8.ByteString'.
get_iserver_scanner_paramsRaw :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_iserver_scanner_paramsRaw = GHC.Base.id (IBKR.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/iserver/scanner/params") GHC.Base.mempty)
-- | > GET /iserver/scanner/params
-- 
-- The same as 'get_iserver_scanner_params' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
get_iserver_scanner_paramsWithConfigurationRaw :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_iserver_scanner_paramsWithConfigurationRaw config = GHC.Base.id (IBKR.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/iserver/scanner/params") GHC.Base.mempty)