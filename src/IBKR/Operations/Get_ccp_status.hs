-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation get_ccp_status
module IBKR.Operations.Get_ccp_status where

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

-- | > GET /ccp/status
-- 
-- Provide the current CCP session status. When using the Gateway this endpoint will also initiate a brokerage session to CCP by sending \/auth\/init and response.
get_ccp_status :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.ClientT m (Network.HTTP.Client.Types.Response Get_ccp_statusResponse) -- ^ Monadic computation which returns the result of the operation
get_ccp_status = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Get_ccp_statusResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_ccp_statusResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                        Get_ccp_statusResponseBody200)
                                                                                                                                                          | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Get_ccp_statusResponse401
                                                                                                                                                          | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Get_ccp_statusResponse500
                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (IBKR.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/ccp/status") GHC.Base.mempty)
-- | Represents a response of the operation 'get_ccp_status'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Get_ccp_statusResponseError' is used.
data Get_ccp_statusResponse =
   Get_ccp_statusResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Get_ccp_statusResponse200 Get_ccp_statusResponseBody200 -- ^ Valid result
  | Get_ccp_statusResponse401 -- ^ Access denied
  | Get_ccp_statusResponse500 -- ^ System error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/ccp\/status.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data Get_ccp_statusResponseBody200 = Get_ccp_statusResponseBody200 {
  -- | authenticated: Login session is authenticated to the CCP.
  get_ccp_statusResponseBody200Authenticated :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | connected: Login session is connected
  , get_ccp_statusResponseBody200Connected :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | name: server name
  , get_ccp_statusResponseBody200Name :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Get_ccp_statusResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authenticated" Data.Aeson.Types.ToJSON..=)) (get_ccp_statusResponseBody200Authenticated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("connected" Data.Aeson.Types.ToJSON..=)) (get_ccp_statusResponseBody200Connected obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (get_ccp_statusResponseBody200Name obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authenticated" Data.Aeson.Types.ToJSON..=)) (get_ccp_statusResponseBody200Authenticated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("connected" Data.Aeson.Types.ToJSON..=)) (get_ccp_statusResponseBody200Connected obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (get_ccp_statusResponseBody200Name obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Get_ccp_statusResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Get_ccp_statusResponseBody200" (\obj -> ((GHC.Base.pure Get_ccp_statusResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "authenticated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "connected")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name"))
-- | Create a new 'Get_ccp_statusResponseBody200' with all required fields.
mkGet_ccp_statusResponseBody200 :: Get_ccp_statusResponseBody200
mkGet_ccp_statusResponseBody200 = Get_ccp_statusResponseBody200{get_ccp_statusResponseBody200Authenticated = GHC.Maybe.Nothing,
                                                                get_ccp_statusResponseBody200Connected = GHC.Maybe.Nothing,
                                                                get_ccp_statusResponseBody200Name = GHC.Maybe.Nothing}
-- | > GET /ccp/status
-- 
-- The same as 'get_ccp_status' but accepts an explicit configuration.
get_ccp_statusWithConfiguration :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response Get_ccp_statusResponse) -- ^ Monadic computation which returns the result of the operation
get_ccp_statusWithConfiguration config = GHC.Base.fmap (\response_4 -> GHC.Base.fmap (Data.Either.either Get_ccp_statusResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Get_ccp_statusResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                Get_ccp_statusResponseBody200)
                                                                                                                                                                                  | (\status_6 -> Network.HTTP.Types.Status.statusCode status_6 GHC.Classes.== 401) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Get_ccp_statusResponse401
                                                                                                                                                                                  | (\status_7 -> Network.HTTP.Types.Status.statusCode status_7 GHC.Classes.== 500) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Get_ccp_statusResponse500
                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_4) response_4) (IBKR.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/ccp/status") GHC.Base.mempty)
-- | > GET /ccp/status
-- 
-- The same as 'get_ccp_status' but returns the raw 'Data.ByteString.Char8.ByteString'.
get_ccp_statusRaw :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_ccp_statusRaw = GHC.Base.id (IBKR.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/ccp/status") GHC.Base.mempty)
-- | > GET /ccp/status
-- 
-- The same as 'get_ccp_status' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
get_ccp_statusWithConfigurationRaw :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
get_ccp_statusWithConfigurationRaw config = GHC.Base.id (IBKR.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/ccp/status") GHC.Base.mempty)