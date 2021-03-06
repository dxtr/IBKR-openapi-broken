-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation get_iserver_account_alert__id_
module IBKR.Operations.Get_iserver_account_alert__id_ where

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

-- | > GET /iserver/account/alert/{id}
-- 
-- Use the endpoint \/iserver\/account\/:accountId\/alerts to receive the alert id.
-- The order_id in the response is the alert id.
get_iserver_account_alert__id_ :: forall m . IBKR.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ id: alert id
  -> IBKR.Common.ClientT m (Network.HTTP.Client.Types.Response Get_iserver_account_alert__id_Response) -- ^ Monadic computation which returns the result of the operation
get_iserver_account_alert__id_ id = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Get_iserver_account_alert__id_ResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_iserver_account_alert__id_Response200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                           Alert_response)
                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (IBKR.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/iserver/account/alert/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ IBKR.Common.stringifyModel id)) GHC.Base.++ ""))) GHC.Base.mempty)
-- | Represents a response of the operation 'get_iserver_account_alert__id_'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Get_iserver_account_alert__id_ResponseError' is used.
data Get_iserver_account_alert__id_Response =
   Get_iserver_account_alert__id_ResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Get_iserver_account_alert__id_Response200 Alert_response -- ^ returns an object
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > GET /iserver/account/alert/{id}
-- 
-- The same as 'get_iserver_account_alert__id_' but accepts an explicit configuration.
get_iserver_account_alert__id_WithConfiguration :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ id: alert id
  -> m (Network.HTTP.Client.Types.Response Get_iserver_account_alert__id_Response) -- ^ Monadic computation which returns the result of the operation
get_iserver_account_alert__id_WithConfiguration config
                                                id = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Get_iserver_account_alert__id_ResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_iserver_account_alert__id_Response200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            Alert_response)
                                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (IBKR.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/iserver/account/alert/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ IBKR.Common.stringifyModel id)) GHC.Base.++ ""))) GHC.Base.mempty)
-- | > GET /iserver/account/alert/{id}
-- 
-- The same as 'get_iserver_account_alert__id_' but returns the raw 'Data.ByteString.Char8.ByteString'.
get_iserver_account_alert__id_Raw :: forall m . IBKR.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ id: alert id
  -> IBKR.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_iserver_account_alert__id_Raw id = GHC.Base.id (IBKR.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/iserver/account/alert/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ IBKR.Common.stringifyModel id)) GHC.Base.++ ""))) GHC.Base.mempty)
-- | > GET /iserver/account/alert/{id}
-- 
-- The same as 'get_iserver_account_alert__id_' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
get_iserver_account_alert__id_WithConfigurationRaw :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ id: alert id
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_iserver_account_alert__id_WithConfigurationRaw config
                                                   id = GHC.Base.id (IBKR.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/iserver/account/alert/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ IBKR.Common.stringifyModel id)) GHC.Base.++ ""))) GHC.Base.mempty)
