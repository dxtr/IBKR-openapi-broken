-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation post_iserver_account__accountId__order_whatif
module IBKR.Operations.Post_iserver_account__accountId__order_whatif where

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

-- | > POST /iserver/account/{accountId}/order/whatif
-- 
-- This end-point is going to be deprecated, you can use \/iserver\/account\/{accountId}\/orders\/whatif,
-- just pass one order in the array, the order structure will be same.
-- This endpoint allows you to preview order without actually submitting the order and you can get
-- commission information in the response.
post_iserver_account__accountId__order_whatif :: forall m . IBKR.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ accountId: account id
  -> IBKR.Common.ClientT m (Network.HTTP.Client.Types.Response Post_iserver_account__accountId__order_whatifResponse) -- ^ Monadic computation which returns the result of the operation
post_iserver_account__accountId__order_whatif accountId = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Post_iserver_account__accountId__order_whatifResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Post_iserver_account__accountId__order_whatifResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               Post_iserver_account__accountId__order_whatifResponseBody200)
                                                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (IBKR.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/iserver/account/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ IBKR.Common.stringifyModel accountId)) GHC.Base.++ "/order/whatif"))) GHC.Base.mempty)
-- | Represents a response of the operation 'post_iserver_account__accountId__order_whatif'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Post_iserver_account__accountId__order_whatifResponseError' is used.
data Post_iserver_account__accountId__order_whatifResponse =
   Post_iserver_account__accountId__order_whatifResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Post_iserver_account__accountId__order_whatifResponse200 Post_iserver_account__accountId__order_whatifResponseBody200 -- ^ returns an object
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/iserver\/account\/{accountId}\/order\/whatif.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data Post_iserver_account__accountId__order_whatifResponseBody200 = Post_iserver_account__accountId__order_whatifResponseBody200 {
  -- | amount
  post_iserver_account__accountId__order_whatifResponseBody200Amount :: (GHC.Maybe.Maybe Post_iserver_account__accountId__order_whatifResponseBody200Amount)
  -- | equity
  , post_iserver_account__accountId__order_whatifResponseBody200Equity :: (GHC.Maybe.Maybe Post_iserver_account__accountId__order_whatifResponseBody200Equity)
  -- | error
  , post_iserver_account__accountId__order_whatifResponseBody200Error :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | initial
  , post_iserver_account__accountId__order_whatifResponseBody200Initial :: (GHC.Maybe.Maybe Post_iserver_account__accountId__order_whatifResponseBody200Initial)
  -- | maintenance
  , post_iserver_account__accountId__order_whatifResponseBody200Maintenance :: (GHC.Maybe.Maybe Post_iserver_account__accountId__order_whatifResponseBody200Maintenance)
  -- | warn
  , post_iserver_account__accountId__order_whatifResponseBody200Warn :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Post_iserver_account__accountId__order_whatifResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200Amount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("equity" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200Equity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("error" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200Error obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("initial" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200Initial obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("maintenance" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200Maintenance obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("warn" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200Warn obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200Amount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("equity" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200Equity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("error" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200Error obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("initial" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200Initial obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("maintenance" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200Maintenance obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("warn" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200Warn obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Post_iserver_account__accountId__order_whatifResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Post_iserver_account__accountId__order_whatifResponseBody200" (\obj -> (((((GHC.Base.pure Post_iserver_account__accountId__order_whatifResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "equity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "initial")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "maintenance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "warn"))
-- | Create a new 'Post_iserver_account__accountId__order_whatifResponseBody200' with all required fields.
mkPost_iserver_account__accountId__order_whatifResponseBody200 :: Post_iserver_account__accountId__order_whatifResponseBody200
mkPost_iserver_account__accountId__order_whatifResponseBody200 = Post_iserver_account__accountId__order_whatifResponseBody200{post_iserver_account__accountId__order_whatifResponseBody200Amount = GHC.Maybe.Nothing,
                                                                                                                              post_iserver_account__accountId__order_whatifResponseBody200Equity = GHC.Maybe.Nothing,
                                                                                                                              post_iserver_account__accountId__order_whatifResponseBody200Error = GHC.Maybe.Nothing,
                                                                                                                              post_iserver_account__accountId__order_whatifResponseBody200Initial = GHC.Maybe.Nothing,
                                                                                                                              post_iserver_account__accountId__order_whatifResponseBody200Maintenance = GHC.Maybe.Nothing,
                                                                                                                              post_iserver_account__accountId__order_whatifResponseBody200Warn = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/iserver\/account\/{accountId}\/order\/whatif.POST.responses.200.content.application\/json.schema.properties.amount@ in the specification.
-- 
-- 
data Post_iserver_account__accountId__order_whatifResponseBody200Amount = Post_iserver_account__accountId__order_whatifResponseBody200Amount {
  -- | amount: for example 23,000 USD
  post_iserver_account__accountId__order_whatifResponseBody200AmountAmount :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | commission: for example 1.1 ... 1.2 USD
  , post_iserver_account__accountId__order_whatifResponseBody200AmountCommission :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | total
  , post_iserver_account__accountId__order_whatifResponseBody200AmountTotal :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Post_iserver_account__accountId__order_whatifResponseBody200Amount
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200AmountAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("commission" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200AmountCommission obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("total" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200AmountTotal obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200AmountAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("commission" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200AmountCommission obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("total" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200AmountTotal obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Post_iserver_account__accountId__order_whatifResponseBody200Amount
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Post_iserver_account__accountId__order_whatifResponseBody200Amount" (\obj -> ((GHC.Base.pure Post_iserver_account__accountId__order_whatifResponseBody200Amount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "commission")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "total"))
-- | Create a new 'Post_iserver_account__accountId__order_whatifResponseBody200Amount' with all required fields.
mkPost_iserver_account__accountId__order_whatifResponseBody200Amount :: Post_iserver_account__accountId__order_whatifResponseBody200Amount
mkPost_iserver_account__accountId__order_whatifResponseBody200Amount = Post_iserver_account__accountId__order_whatifResponseBody200Amount{post_iserver_account__accountId__order_whatifResponseBody200AmountAmount = GHC.Maybe.Nothing,
                                                                                                                                          post_iserver_account__accountId__order_whatifResponseBody200AmountCommission = GHC.Maybe.Nothing,
                                                                                                                                          post_iserver_account__accountId__order_whatifResponseBody200AmountTotal = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/iserver\/account\/{accountId}\/order\/whatif.POST.responses.200.content.application\/json.schema.properties.equity@ in the specification.
-- 
-- 
data Post_iserver_account__accountId__order_whatifResponseBody200Equity = Post_iserver_account__accountId__order_whatifResponseBody200Equity {
  -- | after
  post_iserver_account__accountId__order_whatifResponseBody200EquityAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | change
  , post_iserver_account__accountId__order_whatifResponseBody200EquityChange :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | current
  , post_iserver_account__accountId__order_whatifResponseBody200EquityCurrent :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Post_iserver_account__accountId__order_whatifResponseBody200Equity
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("after" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200EquityAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("change" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200EquityChange obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("current" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200EquityCurrent obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("after" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200EquityAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("change" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200EquityChange obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("current" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200EquityCurrent obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Post_iserver_account__accountId__order_whatifResponseBody200Equity
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Post_iserver_account__accountId__order_whatifResponseBody200Equity" (\obj -> ((GHC.Base.pure Post_iserver_account__accountId__order_whatifResponseBody200Equity GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "change")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "current"))
-- | Create a new 'Post_iserver_account__accountId__order_whatifResponseBody200Equity' with all required fields.
mkPost_iserver_account__accountId__order_whatifResponseBody200Equity :: Post_iserver_account__accountId__order_whatifResponseBody200Equity
mkPost_iserver_account__accountId__order_whatifResponseBody200Equity = Post_iserver_account__accountId__order_whatifResponseBody200Equity{post_iserver_account__accountId__order_whatifResponseBody200EquityAfter = GHC.Maybe.Nothing,
                                                                                                                                          post_iserver_account__accountId__order_whatifResponseBody200EquityChange = GHC.Maybe.Nothing,
                                                                                                                                          post_iserver_account__accountId__order_whatifResponseBody200EquityCurrent = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/iserver\/account\/{accountId}\/order\/whatif.POST.responses.200.content.application\/json.schema.properties.initial@ in the specification.
-- 
-- 
data Post_iserver_account__accountId__order_whatifResponseBody200Initial = Post_iserver_account__accountId__order_whatifResponseBody200Initial {
  -- | after
  post_iserver_account__accountId__order_whatifResponseBody200InitialAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | change
  , post_iserver_account__accountId__order_whatifResponseBody200InitialChange :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | current
  , post_iserver_account__accountId__order_whatifResponseBody200InitialCurrent :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Post_iserver_account__accountId__order_whatifResponseBody200Initial
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("after" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200InitialAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("change" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200InitialChange obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("current" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200InitialCurrent obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("after" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200InitialAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("change" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200InitialChange obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("current" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200InitialCurrent obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Post_iserver_account__accountId__order_whatifResponseBody200Initial
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Post_iserver_account__accountId__order_whatifResponseBody200Initial" (\obj -> ((GHC.Base.pure Post_iserver_account__accountId__order_whatifResponseBody200Initial GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "change")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "current"))
-- | Create a new 'Post_iserver_account__accountId__order_whatifResponseBody200Initial' with all required fields.
mkPost_iserver_account__accountId__order_whatifResponseBody200Initial :: Post_iserver_account__accountId__order_whatifResponseBody200Initial
mkPost_iserver_account__accountId__order_whatifResponseBody200Initial = Post_iserver_account__accountId__order_whatifResponseBody200Initial{post_iserver_account__accountId__order_whatifResponseBody200InitialAfter = GHC.Maybe.Nothing,
                                                                                                                                            post_iserver_account__accountId__order_whatifResponseBody200InitialChange = GHC.Maybe.Nothing,
                                                                                                                                            post_iserver_account__accountId__order_whatifResponseBody200InitialCurrent = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/iserver\/account\/{accountId}\/order\/whatif.POST.responses.200.content.application\/json.schema.properties.maintenance@ in the specification.
-- 
-- 
data Post_iserver_account__accountId__order_whatifResponseBody200Maintenance = Post_iserver_account__accountId__order_whatifResponseBody200Maintenance {
  -- | after
  post_iserver_account__accountId__order_whatifResponseBody200MaintenanceAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | change
  , post_iserver_account__accountId__order_whatifResponseBody200MaintenanceChange :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | current
  , post_iserver_account__accountId__order_whatifResponseBody200MaintenanceCurrent :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Post_iserver_account__accountId__order_whatifResponseBody200Maintenance
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("after" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200MaintenanceAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("change" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200MaintenanceChange obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("current" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200MaintenanceCurrent obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("after" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200MaintenanceAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("change" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200MaintenanceChange obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("current" Data.Aeson.Types.ToJSON..=)) (post_iserver_account__accountId__order_whatifResponseBody200MaintenanceCurrent obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Post_iserver_account__accountId__order_whatifResponseBody200Maintenance
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Post_iserver_account__accountId__order_whatifResponseBody200Maintenance" (\obj -> ((GHC.Base.pure Post_iserver_account__accountId__order_whatifResponseBody200Maintenance GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "change")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "current"))
-- | Create a new 'Post_iserver_account__accountId__order_whatifResponseBody200Maintenance' with all required fields.
mkPost_iserver_account__accountId__order_whatifResponseBody200Maintenance :: Post_iserver_account__accountId__order_whatifResponseBody200Maintenance
mkPost_iserver_account__accountId__order_whatifResponseBody200Maintenance = Post_iserver_account__accountId__order_whatifResponseBody200Maintenance{post_iserver_account__accountId__order_whatifResponseBody200MaintenanceAfter = GHC.Maybe.Nothing,
                                                                                                                                                    post_iserver_account__accountId__order_whatifResponseBody200MaintenanceChange = GHC.Maybe.Nothing,
                                                                                                                                                    post_iserver_account__accountId__order_whatifResponseBody200MaintenanceCurrent = GHC.Maybe.Nothing}
-- | > POST /iserver/account/{accountId}/order/whatif
-- 
-- The same as 'post_iserver_account__accountId__order_whatif' but accepts an explicit configuration.
post_iserver_account__accountId__order_whatifWithConfiguration :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ accountId: account id
  -> m (Network.HTTP.Client.Types.Response Post_iserver_account__accountId__order_whatifResponse) -- ^ Monadic computation which returns the result of the operation
post_iserver_account__accountId__order_whatifWithConfiguration config
                                                               accountId = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either Post_iserver_account__accountId__order_whatifResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Post_iserver_account__accountId__order_whatifResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                Post_iserver_account__accountId__order_whatifResponseBody200)
                                                                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (IBKR.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/iserver/account/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ IBKR.Common.stringifyModel accountId)) GHC.Base.++ "/order/whatif"))) GHC.Base.mempty)
-- | > POST /iserver/account/{accountId}/order/whatif
-- 
-- The same as 'post_iserver_account__accountId__order_whatif' but returns the raw 'Data.ByteString.Char8.ByteString'.
post_iserver_account__accountId__order_whatifRaw :: forall m . IBKR.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ accountId: account id
  -> IBKR.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
post_iserver_account__accountId__order_whatifRaw accountId = GHC.Base.id (IBKR.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/iserver/account/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ IBKR.Common.stringifyModel accountId)) GHC.Base.++ "/order/whatif"))) GHC.Base.mempty)
-- | > POST /iserver/account/{accountId}/order/whatif
-- 
-- The same as 'post_iserver_account__accountId__order_whatif' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
post_iserver_account__accountId__order_whatifWithConfigurationRaw :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ accountId: account id
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
post_iserver_account__accountId__order_whatifWithConfigurationRaw config
                                                                  accountId = GHC.Base.id (IBKR.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/iserver/account/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ IBKR.Common.stringifyModel accountId)) GHC.Base.++ "/order/whatif"))) GHC.Base.mempty)
