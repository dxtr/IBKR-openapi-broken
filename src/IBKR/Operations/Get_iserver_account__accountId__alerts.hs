-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation get_iserver_account__accountId__alerts
module IBKR.Operations.Get_iserver_account__accountId__alerts where

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

-- | > GET /iserver/account/{accountId}/alerts
-- 
-- The response will contain both active and inactive alerts, but it won\'t have MTA alert
get_iserver_account__accountId__alerts :: forall m . IBKR.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ accountId: account id
  -> IBKR.Common.ClientT m (Network.HTTP.Client.Types.Response Get_iserver_account__accountId__alertsResponse) -- ^ Monadic computation which returns the result of the operation
get_iserver_account__accountId__alerts accountId = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Get_iserver_account__accountId__alertsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_iserver_account__accountId__alertsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ([Get_iserver_account__accountId__alertsResponseBody200]))
                                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (IBKR.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/iserver/account/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ IBKR.Common.stringifyModel accountId)) GHC.Base.++ "/alerts"))) GHC.Base.mempty)
-- | Represents a response of the operation 'get_iserver_account__accountId__alerts'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Get_iserver_account__accountId__alertsResponseError' is used.
data Get_iserver_account__accountId__alertsResponse =
   Get_iserver_account__accountId__alertsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Get_iserver_account__accountId__alertsResponse200 ([Get_iserver_account__accountId__alertsResponseBody200]) -- ^ returns an array of objects
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/iserver\/account\/{accountId}\/alerts.GET.responses.200.content.application\/json.schema.items@ in the specification.
-- 
-- 
data Get_iserver_account__accountId__alertsResponseBody200 = Get_iserver_account__accountId__alertsResponseBody200 {
  -- | account: account id
  get_iserver_account__accountId__alertsResponseBody200Account :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | alert_active: Value can only be 0 or 1, 1 means active
  , get_iserver_account__accountId__alertsResponseBody200Alert_active :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | alert_name
  , get_iserver_account__accountId__alertsResponseBody200Alert_name :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | alert_repeatable: whether the alert can be repeatable or not, value can be 1 or 0. 1 means true
  , get_iserver_account__accountId__alertsResponseBody200Alert_repeatable :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | alert_triggered: whether the alert has been triggered or not
  , get_iserver_account__accountId__alertsResponseBody200Alert_triggered :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | order_id
  , get_iserver_account__accountId__alertsResponseBody200Order_id :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | order_time: format, YYYYMMDD-HH:mm:ss, the time when you created the alert
  , get_iserver_account__accountId__alertsResponseBody200Order_time :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_iserver_account__accountId__alertsResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account" Data.Aeson.Types.ToJSON..=)) (get_iserver_account__accountId__alertsResponseBody200Account obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alert_active" Data.Aeson.Types.ToJSON..=)) (get_iserver_account__accountId__alertsResponseBody200Alert_active obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alert_name" Data.Aeson.Types.ToJSON..=)) (get_iserver_account__accountId__alertsResponseBody200Alert_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alert_repeatable" Data.Aeson.Types.ToJSON..=)) (get_iserver_account__accountId__alertsResponseBody200Alert_repeatable obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alert_triggered" Data.Aeson.Types.ToJSON..=)) (get_iserver_account__accountId__alertsResponseBody200Alert_triggered obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_id" Data.Aeson.Types.ToJSON..=)) (get_iserver_account__accountId__alertsResponseBody200Order_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_time" Data.Aeson.Types.ToJSON..=)) (get_iserver_account__accountId__alertsResponseBody200Order_time obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account" Data.Aeson.Types.ToJSON..=)) (get_iserver_account__accountId__alertsResponseBody200Account obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alert_active" Data.Aeson.Types.ToJSON..=)) (get_iserver_account__accountId__alertsResponseBody200Alert_active obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alert_name" Data.Aeson.Types.ToJSON..=)) (get_iserver_account__accountId__alertsResponseBody200Alert_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alert_repeatable" Data.Aeson.Types.ToJSON..=)) (get_iserver_account__accountId__alertsResponseBody200Alert_repeatable obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alert_triggered" Data.Aeson.Types.ToJSON..=)) (get_iserver_account__accountId__alertsResponseBody200Alert_triggered obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_id" Data.Aeson.Types.ToJSON..=)) (get_iserver_account__accountId__alertsResponseBody200Order_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_time" Data.Aeson.Types.ToJSON..=)) (get_iserver_account__accountId__alertsResponseBody200Order_time obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Get_iserver_account__accountId__alertsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_iserver_account__accountId__alertsResponseBody200" (\obj -> ((((((GHC.Base.pure Get_iserver_account__accountId__alertsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "alert_active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "alert_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "alert_repeatable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "alert_triggered")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "order_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "order_time"))
-- | Create a new 'Get_iserver_account__accountId__alertsResponseBody200' with all required fields.
mkGet_iserver_account__accountId__alertsResponseBody200 :: Get_iserver_account__accountId__alertsResponseBody200
mkGet_iserver_account__accountId__alertsResponseBody200 = Get_iserver_account__accountId__alertsResponseBody200{get_iserver_account__accountId__alertsResponseBody200Account = GHC.Maybe.Nothing,
                                                                                                                get_iserver_account__accountId__alertsResponseBody200Alert_active = GHC.Maybe.Nothing,
                                                                                                                get_iserver_account__accountId__alertsResponseBody200Alert_name = GHC.Maybe.Nothing,
                                                                                                                get_iserver_account__accountId__alertsResponseBody200Alert_repeatable = GHC.Maybe.Nothing,
                                                                                                                get_iserver_account__accountId__alertsResponseBody200Alert_triggered = GHC.Maybe.Nothing,
                                                                                                                get_iserver_account__accountId__alertsResponseBody200Order_id = GHC.Maybe.Nothing,
                                                                                                                get_iserver_account__accountId__alertsResponseBody200Order_time = GHC.Maybe.Nothing}
-- | > GET /iserver/account/{accountId}/alerts
-- 
-- The same as 'get_iserver_account__accountId__alerts' but accepts an explicit configuration.
get_iserver_account__accountId__alertsWithConfiguration :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ accountId: account id
  -> m (Network.HTTP.Client.Types.Response Get_iserver_account__accountId__alertsResponse) -- ^ Monadic computation which returns the result of the operation
get_iserver_account__accountId__alertsWithConfiguration config
                                                        accountId = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Get_iserver_account__accountId__alertsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_iserver_account__accountId__alertsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ([Get_iserver_account__accountId__alertsResponseBody200]))
                                                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (IBKR.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/iserver/account/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ IBKR.Common.stringifyModel accountId)) GHC.Base.++ "/alerts"))) GHC.Base.mempty)
-- | > GET /iserver/account/{accountId}/alerts
-- 
-- The same as 'get_iserver_account__accountId__alerts' but returns the raw 'Data.ByteString.Char8.ByteString'.
get_iserver_account__accountId__alertsRaw :: forall m . IBKR.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ accountId: account id
  -> IBKR.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_iserver_account__accountId__alertsRaw accountId = GHC.Base.id (IBKR.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/iserver/account/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ IBKR.Common.stringifyModel accountId)) GHC.Base.++ "/alerts"))) GHC.Base.mempty)
-- | > GET /iserver/account/{accountId}/alerts
-- 
-- The same as 'get_iserver_account__accountId__alerts' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
get_iserver_account__accountId__alertsWithConfigurationRaw :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ accountId: account id
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_iserver_account__accountId__alertsWithConfigurationRaw config
                                                           accountId = GHC.Base.id (IBKR.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/iserver/account/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ IBKR.Common.stringifyModel accountId)) GHC.Base.++ "/alerts"))) GHC.Base.mempty)