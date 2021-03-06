-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation get_iserver_marketdata_history
module IBKR.Operations.Get_iserver_marketdata_history where

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

-- | > GET /iserver/marketdata/history
-- 
-- Get historical market Data for given conid, length of data is controlled by \'period\' and \'bar\'.
-- Formatted as: min=minute, h=hour, d=day, w=week, m=month, y=year
-- e.g. period =1y with bar =1w returns 52 data points (Max of 1000 data points supported).
-- **Note**: There\'s a limit of 5 concurrent requests. Excessive requests will return a \'Too many requests\' status 429 response.
get_iserver_marketdata_history :: forall m . IBKR.Common.MonadHTTP m => Get_iserver_marketdata_historyParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> IBKR.Common.ClientT m (Network.HTTP.Client.Types.Response Get_iserver_marketdata_historyResponse) -- ^ Monadic computation which returns the result of the operation
get_iserver_marketdata_history parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Get_iserver_marketdata_historyResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_iserver_marketdata_historyResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   History_data)
                                                                                                                                                                                                     | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 429) (Network.HTTP.Client.Types.responseStatus response) -> Get_iserver_marketdata_historyResponse429 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   Get_iserver_marketdata_historyResponseBody429)
                                                                                                                                                                                                     | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Get_iserver_marketdata_historyResponse500 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   System_error)
                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (IBKR.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/iserver/marketdata/history") [IBKR.Common.QueryParameter (Data.Text.pack "conid") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (get_iserver_marketdata_historyParametersQueryConid parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                    IBKR.Common.QueryParameter (Data.Text.pack "exchange") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_iserver_marketdata_historyParametersQueryExchange parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                    IBKR.Common.QueryParameter (Data.Text.pack "period") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (get_iserver_marketdata_historyParametersQueryPeriod parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                    IBKR.Common.QueryParameter (Data.Text.pack "bar") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_iserver_marketdata_historyParametersQueryBar parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                    IBKR.Common.QueryParameter (Data.Text.pack "outsideRth") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_iserver_marketdata_historyParametersQueryOutsideRth parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/iserver\/marketdata\/history.GET.parameters@ in the specification.
-- 
-- 
data Get_iserver_marketdata_historyParameters = Get_iserver_marketdata_historyParameters {
  -- | queryBar: Represents the parameter named \'bar\'
  -- 
  -- possible value-- 1min, 2min, 3min, 5min, 10min, 15min, 30min, 1h, 2h, 3h, 4h, 8h, 1d, 1w, 1m
  get_iserver_marketdata_historyParametersQueryBar :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryConid: Represents the parameter named \'conid\'
  -- 
  -- contract id
  , get_iserver_marketdata_historyParametersQueryConid :: Data.Text.Internal.Text
  -- | queryExchange: Represents the parameter named \'exchange\'
  -- 
  -- Exchange of the conid (e.g. ISLAND, NYSE, etc.). Default value is empty which corresponds to primary exchange of the conid.
  , get_iserver_marketdata_historyParametersQueryExchange :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryOutsideRth: Represents the parameter named \'outsideRth\'
  -- 
  -- For contracts that support it, will determine if historical data includes outside of regular trading hours.
  , get_iserver_marketdata_historyParametersQueryOutsideRth :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | queryPeriod: Represents the parameter named \'period\'
  -- 
  -- available time period-- {1-30}min, {1-8}h, {1-1000}d, {1-792}w, {1-182}m, {1-15}y
  , get_iserver_marketdata_historyParametersQueryPeriod :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_iserver_marketdata_historyParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryBar" Data.Aeson.Types.ToJSON..=)) (get_iserver_marketdata_historyParametersQueryBar obj) : ["queryConid" Data.Aeson.Types.ToJSON..= get_iserver_marketdata_historyParametersQueryConid obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExchange" Data.Aeson.Types.ToJSON..=)) (get_iserver_marketdata_historyParametersQueryExchange obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOutsideRth" Data.Aeson.Types.ToJSON..=)) (get_iserver_marketdata_historyParametersQueryOutsideRth obj) : ["queryPeriod" Data.Aeson.Types.ToJSON..= get_iserver_marketdata_historyParametersQueryPeriod obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryBar" Data.Aeson.Types.ToJSON..=)) (get_iserver_marketdata_historyParametersQueryBar obj) : ["queryConid" Data.Aeson.Types.ToJSON..= get_iserver_marketdata_historyParametersQueryConid obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExchange" Data.Aeson.Types.ToJSON..=)) (get_iserver_marketdata_historyParametersQueryExchange obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryOutsideRth" Data.Aeson.Types.ToJSON..=)) (get_iserver_marketdata_historyParametersQueryOutsideRth obj) : ["queryPeriod" Data.Aeson.Types.ToJSON..= get_iserver_marketdata_historyParametersQueryPeriod obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Get_iserver_marketdata_historyParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_iserver_marketdata_historyParameters" (\obj -> ((((GHC.Base.pure Get_iserver_marketdata_historyParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryBar")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryConid")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExchange")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryOutsideRth")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryPeriod"))
-- | Create a new 'Get_iserver_marketdata_historyParameters' with all required fields.
mkGet_iserver_marketdata_historyParameters :: Data.Text.Internal.Text -- ^ 'get_iserver_marketdata_historyParametersQueryConid'
  -> Data.Text.Internal.Text -- ^ 'get_iserver_marketdata_historyParametersQueryPeriod'
  -> Get_iserver_marketdata_historyParameters
mkGet_iserver_marketdata_historyParameters get_iserver_marketdata_historyParametersQueryConid get_iserver_marketdata_historyParametersQueryPeriod = Get_iserver_marketdata_historyParameters{get_iserver_marketdata_historyParametersQueryBar = GHC.Maybe.Nothing,
                                                                                                                                                                                             get_iserver_marketdata_historyParametersQueryConid = get_iserver_marketdata_historyParametersQueryConid,
                                                                                                                                                                                             get_iserver_marketdata_historyParametersQueryExchange = GHC.Maybe.Nothing,
                                                                                                                                                                                             get_iserver_marketdata_historyParametersQueryOutsideRth = GHC.Maybe.Nothing,
                                                                                                                                                                                             get_iserver_marketdata_historyParametersQueryPeriod = get_iserver_marketdata_historyParametersQueryPeriod}
-- | Represents a response of the operation 'get_iserver_marketdata_history'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Get_iserver_marketdata_historyResponseError' is used.
data Get_iserver_marketdata_historyResponse =
   Get_iserver_marketdata_historyResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Get_iserver_marketdata_historyResponse200 History_data -- ^ Returns an object
  | Get_iserver_marketdata_historyResponse429 Get_iserver_marketdata_historyResponseBody429 -- ^ Too many requests
  | Get_iserver_marketdata_historyResponse500 System_error -- ^ System Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/iserver\/marketdata\/history.GET.responses.429.content.application\/json.schema@ in the specification.
-- 
-- 
data Get_iserver_marketdata_historyResponseBody429 = Get_iserver_marketdata_historyResponseBody429 {
  -- | error
  get_iserver_marketdata_historyResponseBody429Error :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_iserver_marketdata_historyResponseBody429
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("error" Data.Aeson.Types.ToJSON..=)) (get_iserver_marketdata_historyResponseBody429Error obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("error" Data.Aeson.Types.ToJSON..=)) (get_iserver_marketdata_historyResponseBody429Error obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Get_iserver_marketdata_historyResponseBody429
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_iserver_marketdata_historyResponseBody429" (\obj -> GHC.Base.pure Get_iserver_marketdata_historyResponseBody429 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "error"))
-- | Create a new 'Get_iserver_marketdata_historyResponseBody429' with all required fields.
mkGet_iserver_marketdata_historyResponseBody429 :: Get_iserver_marketdata_historyResponseBody429
mkGet_iserver_marketdata_historyResponseBody429 = Get_iserver_marketdata_historyResponseBody429{get_iserver_marketdata_historyResponseBody429Error = GHC.Maybe.Nothing}
-- | > GET /iserver/marketdata/history
-- 
-- The same as 'get_iserver_marketdata_history' but accepts an explicit configuration.
get_iserver_marketdata_historyWithConfiguration :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.Configuration -- ^ The configuration to use in the request
  -> Get_iserver_marketdata_historyParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Get_iserver_marketdata_historyResponse) -- ^ Monadic computation which returns the result of the operation
get_iserver_marketdata_historyWithConfiguration config
                                                parameters = GHC.Base.fmap (\response_4 -> GHC.Base.fmap (Data.Either.either Get_iserver_marketdata_historyResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_iserver_marketdata_historyResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    History_data)
                                                                                                                                                                                                                      | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 429) (Network.HTTP.Client.Types.responseStatus response) -> Get_iserver_marketdata_historyResponse429 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Get_iserver_marketdata_historyResponseBody429)
                                                                                                                                                                                                                      | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Get_iserver_marketdata_historyResponse500 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    System_error)
                                                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_4) response_4) (IBKR.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/iserver/marketdata/history") [IBKR.Common.QueryParameter (Data.Text.pack "conid") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (get_iserver_marketdata_historyParametersQueryConid parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           IBKR.Common.QueryParameter (Data.Text.pack "exchange") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_iserver_marketdata_historyParametersQueryExchange parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           IBKR.Common.QueryParameter (Data.Text.pack "period") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (get_iserver_marketdata_historyParametersQueryPeriod parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           IBKR.Common.QueryParameter (Data.Text.pack "bar") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_iserver_marketdata_historyParametersQueryBar parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           IBKR.Common.QueryParameter (Data.Text.pack "outsideRth") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_iserver_marketdata_historyParametersQueryOutsideRth parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /iserver/marketdata/history
-- 
-- The same as 'get_iserver_marketdata_history' but returns the raw 'Data.ByteString.Char8.ByteString'.
get_iserver_marketdata_historyRaw :: forall m . IBKR.Common.MonadHTTP m => Get_iserver_marketdata_historyParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> IBKR.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_iserver_marketdata_historyRaw parameters = GHC.Base.id (IBKR.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/iserver/marketdata/history") [IBKR.Common.QueryParameter (Data.Text.pack "conid") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (get_iserver_marketdata_historyParametersQueryConid parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                        IBKR.Common.QueryParameter (Data.Text.pack "exchange") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_iserver_marketdata_historyParametersQueryExchange parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                        IBKR.Common.QueryParameter (Data.Text.pack "period") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (get_iserver_marketdata_historyParametersQueryPeriod parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                        IBKR.Common.QueryParameter (Data.Text.pack "bar") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_iserver_marketdata_historyParametersQueryBar parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                        IBKR.Common.QueryParameter (Data.Text.pack "outsideRth") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_iserver_marketdata_historyParametersQueryOutsideRth parameters) (Data.Text.pack "form") GHC.Types.False])
-- | > GET /iserver/marketdata/history
-- 
-- The same as 'get_iserver_marketdata_history' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
get_iserver_marketdata_historyWithConfigurationRaw :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.Configuration -- ^ The configuration to use in the request
  -> Get_iserver_marketdata_historyParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_iserver_marketdata_historyWithConfigurationRaw config
                                                   parameters = GHC.Base.id (IBKR.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/iserver/marketdata/history") [IBKR.Common.QueryParameter (Data.Text.pack "conid") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (get_iserver_marketdata_historyParametersQueryConid parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                               IBKR.Common.QueryParameter (Data.Text.pack "exchange") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_iserver_marketdata_historyParametersQueryExchange parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                               IBKR.Common.QueryParameter (Data.Text.pack "period") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (get_iserver_marketdata_historyParametersQueryPeriod parameters)) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                               IBKR.Common.QueryParameter (Data.Text.pack "bar") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_iserver_marketdata_historyParametersQueryBar parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                               IBKR.Common.QueryParameter (Data.Text.pack "outsideRth") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> get_iserver_marketdata_historyParametersQueryOutsideRth parameters) (Data.Text.pack "form") GHC.Types.False])
