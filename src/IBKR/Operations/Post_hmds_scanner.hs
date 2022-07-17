-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation post_hmds_scanner
module IBKR.Operations.Post_hmds_scanner where

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

-- | > POST /hmds/scanner
-- 
-- Using a direct connection to the market data farm, will provide results to the requested scanner.
post_hmds_scanner :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.ClientT m (Network.HTTP.Client.Types.Response Post_hmds_scannerResponse) -- ^ Monadic computation which returns the result of the operation
post_hmds_scanner = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Post_hmds_scannerResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Post_hmds_scannerResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                 Scanner_result)
                                                                                                                                                                | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Post_hmds_scannerResponse400
                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (IBKR.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/hmds/scanner") GHC.Base.mempty)
-- | Represents a response of the operation 'post_hmds_scanner'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Post_hmds_scannerResponseError' is used.
data Post_hmds_scannerResponse =
   Post_hmds_scannerResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Post_hmds_scannerResponse200 Scanner_result -- ^ Valid result
  | Post_hmds_scannerResponse400 -- ^ Bad request
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | > POST /hmds/scanner
-- 
-- The same as 'post_hmds_scanner' but accepts an explicit configuration.
post_hmds_scannerWithConfiguration :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response Post_hmds_scannerResponse) -- ^ Monadic computation which returns the result of the operation
post_hmds_scannerWithConfiguration config = GHC.Base.fmap (\response_3 -> GHC.Base.fmap (Data.Either.either Post_hmds_scannerResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Post_hmds_scannerResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                         Scanner_result)
                                                                                                                                                                                        | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right Post_hmds_scannerResponse400
                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_3) response_3) (IBKR.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/hmds/scanner") GHC.Base.mempty)
-- | > POST /hmds/scanner
-- 
-- The same as 'post_hmds_scanner' but returns the raw 'Data.ByteString.Char8.ByteString'.
post_hmds_scannerRaw :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
post_hmds_scannerRaw = GHC.Base.id (IBKR.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/hmds/scanner") GHC.Base.mempty)
-- | > POST /hmds/scanner
-- 
-- The same as 'post_hmds_scanner' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
post_hmds_scannerWithConfigurationRaw :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
post_hmds_scannerWithConfigurationRaw config = GHC.Base.id (IBKR.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/hmds/scanner") GHC.Base.mempty)