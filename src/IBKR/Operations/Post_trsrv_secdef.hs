-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation post_trsrv_secdef
module IBKR.Operations.Post_trsrv_secdef where

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

-- | > POST /trsrv/secdef
-- 
-- Returns a list of security definitions for the given conids
post_trsrv_secdef :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.ClientT m (Network.HTTP.Client.Types.Response Post_trsrv_secdefResponse) -- ^ Monadic computation which returns the result of the operation
post_trsrv_secdef = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Post_trsrv_secdefResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Post_trsrv_secdefResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                 Secdef)
                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (IBKR.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/trsrv/secdef") GHC.Base.mempty)
-- | Represents a response of the operation 'post_trsrv_secdef'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Post_trsrv_secdefResponseError' is used.
data Post_trsrv_secdefResponse =
   Post_trsrv_secdefResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Post_trsrv_secdefResponse200 Secdef -- ^ returns an array of secdef info
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > POST /trsrv/secdef
-- 
-- The same as 'post_trsrv_secdef' but accepts an explicit configuration.
post_trsrv_secdefWithConfiguration :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response Post_trsrv_secdefResponse) -- ^ Monadic computation which returns the result of the operation
post_trsrv_secdefWithConfiguration config = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Post_trsrv_secdefResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Post_trsrv_secdefResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                         Secdef)
                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (IBKR.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/trsrv/secdef") GHC.Base.mempty)
-- | > POST /trsrv/secdef
-- 
-- The same as 'post_trsrv_secdef' but returns the raw 'Data.ByteString.Char8.ByteString'.
post_trsrv_secdefRaw :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
post_trsrv_secdefRaw = GHC.Base.id (IBKR.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/trsrv/secdef") GHC.Base.mempty)
-- | > POST /trsrv/secdef
-- 
-- The same as 'post_trsrv_secdef' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
post_trsrv_secdefWithConfigurationRaw :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
post_trsrv_secdefWithConfigurationRaw config = GHC.Base.id (IBKR.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/trsrv/secdef") GHC.Base.mempty)