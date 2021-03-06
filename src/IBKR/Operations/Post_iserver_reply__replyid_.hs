-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation post_iserver_reply__replyid_
module IBKR.Operations.Post_iserver_reply__replyid_ where

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

-- | > POST /iserver/reply/{replyid}
-- 
-- Reply to questions when placing orders and submit orders
post_iserver_reply__replyid_ :: forall m . IBKR.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ replyid: Please use the \"id\" from the response of \"Place Order\" endpoint
  -> IBKR.Common.ClientT m (Network.HTTP.Client.Types.Response Post_iserver_reply__replyid_Response) -- ^ Monadic computation which returns the result of the operation
post_iserver_reply__replyid_ replyid = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either Post_iserver_reply__replyid_ResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Post_iserver_reply__replyid_Response200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                          ([Post_iserver_reply__replyid_ResponseBody200]))
                                                                                                                                                                                              | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Post_iserver_reply__replyid_Response400 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                          Post_iserver_reply__replyid_ResponseBody400)
                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (IBKR.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/iserver/reply/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ IBKR.Common.stringifyModel replyid)) GHC.Base.++ ""))) GHC.Base.mempty)
-- | Represents a response of the operation 'post_iserver_reply__replyid_'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'Post_iserver_reply__replyid_ResponseError' is used.
data Post_iserver_reply__replyid_Response =
   Post_iserver_reply__replyid_ResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | Post_iserver_reply__replyid_Response200 ([Post_iserver_reply__replyid_ResponseBody200]) -- ^ Order is submitted successfully, returns an array contains one object
  | Post_iserver_reply__replyid_Response400 Post_iserver_reply__replyid_ResponseBody400 -- ^ When you send \"confirmed-false\" in the request, you will receive this
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/iserver\/reply\/{replyid}.POST.responses.200.content.application\/json.schema.items@ in the specification.
-- 
-- 
data Post_iserver_reply__replyid_ResponseBody200 = Post_iserver_reply__replyid_ResponseBody200 {
  -- | local_order_id
  post_iserver_reply__replyid_ResponseBody200Local_order_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | order_id
  , post_iserver_reply__replyid_ResponseBody200Order_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | order_status
  , post_iserver_reply__replyid_ResponseBody200Order_status :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Post_iserver_reply__replyid_ResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("local_order_id" Data.Aeson.Types.ToJSON..=)) (post_iserver_reply__replyid_ResponseBody200Local_order_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_id" Data.Aeson.Types.ToJSON..=)) (post_iserver_reply__replyid_ResponseBody200Order_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_status" Data.Aeson.Types.ToJSON..=)) (post_iserver_reply__replyid_ResponseBody200Order_status obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("local_order_id" Data.Aeson.Types.ToJSON..=)) (post_iserver_reply__replyid_ResponseBody200Local_order_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_id" Data.Aeson.Types.ToJSON..=)) (post_iserver_reply__replyid_ResponseBody200Order_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_status" Data.Aeson.Types.ToJSON..=)) (post_iserver_reply__replyid_ResponseBody200Order_status obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Post_iserver_reply__replyid_ResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Post_iserver_reply__replyid_ResponseBody200" (\obj -> ((GHC.Base.pure Post_iserver_reply__replyid_ResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "local_order_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "order_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "order_status"))
-- | Create a new 'Post_iserver_reply__replyid_ResponseBody200' with all required fields.
mkPost_iserver_reply__replyid_ResponseBody200 :: Post_iserver_reply__replyid_ResponseBody200
mkPost_iserver_reply__replyid_ResponseBody200 = Post_iserver_reply__replyid_ResponseBody200{post_iserver_reply__replyid_ResponseBody200Local_order_id = GHC.Maybe.Nothing,
                                                                                            post_iserver_reply__replyid_ResponseBody200Order_id = GHC.Maybe.Nothing,
                                                                                            post_iserver_reply__replyid_ResponseBody200Order_status = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/iserver\/reply\/{replyid}.POST.responses.400.content.application\/json.schema@ in the specification.
-- 
-- 
data Post_iserver_reply__replyid_ResponseBody400 = Post_iserver_reply__replyid_ResponseBody400 {
  -- | error: for example-order not confirmed
  post_iserver_reply__replyid_ResponseBody400Error :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | statusCode
  , post_iserver_reply__replyid_ResponseBody400StatusCode :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Post_iserver_reply__replyid_ResponseBody400
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("error" Data.Aeson.Types.ToJSON..=)) (post_iserver_reply__replyid_ResponseBody400Error obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statusCode" Data.Aeson.Types.ToJSON..=)) (post_iserver_reply__replyid_ResponseBody400StatusCode obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("error" Data.Aeson.Types.ToJSON..=)) (post_iserver_reply__replyid_ResponseBody400Error obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statusCode" Data.Aeson.Types.ToJSON..=)) (post_iserver_reply__replyid_ResponseBody400StatusCode obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Post_iserver_reply__replyid_ResponseBody400
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Post_iserver_reply__replyid_ResponseBody400" (\obj -> (GHC.Base.pure Post_iserver_reply__replyid_ResponseBody400 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "statusCode"))
-- | Create a new 'Post_iserver_reply__replyid_ResponseBody400' with all required fields.
mkPost_iserver_reply__replyid_ResponseBody400 :: Post_iserver_reply__replyid_ResponseBody400
mkPost_iserver_reply__replyid_ResponseBody400 = Post_iserver_reply__replyid_ResponseBody400{post_iserver_reply__replyid_ResponseBody400Error = GHC.Maybe.Nothing,
                                                                                            post_iserver_reply__replyid_ResponseBody400StatusCode = GHC.Maybe.Nothing}
-- | > POST /iserver/reply/{replyid}
-- 
-- The same as 'post_iserver_reply__replyid_' but accepts an explicit configuration.
post_iserver_reply__replyid_WithConfiguration :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ replyid: Please use the \"id\" from the response of \"Place Order\" endpoint
  -> m (Network.HTTP.Client.Types.Response Post_iserver_reply__replyid_Response) -- ^ Monadic computation which returns the result of the operation
post_iserver_reply__replyid_WithConfiguration config
                                              replyid = GHC.Base.fmap (\response_3 -> GHC.Base.fmap (Data.Either.either Post_iserver_reply__replyid_ResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_4 -> Network.HTTP.Types.Status.statusCode status_4 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Post_iserver_reply__replyid_Response200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ([Post_iserver_reply__replyid_ResponseBody200]))
                                                                                                                                                                                                               | (\status_5 -> Network.HTTP.Types.Status.statusCode status_5 GHC.Classes.== 400) (Network.HTTP.Client.Types.responseStatus response) -> Post_iserver_reply__replyid_Response400 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           Post_iserver_reply__replyid_ResponseBody400)
                                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_3) response_3) (IBKR.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/iserver/reply/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ IBKR.Common.stringifyModel replyid)) GHC.Base.++ ""))) GHC.Base.mempty)
-- | > POST /iserver/reply/{replyid}
-- 
-- The same as 'post_iserver_reply__replyid_' but returns the raw 'Data.ByteString.Char8.ByteString'.
post_iserver_reply__replyid_Raw :: forall m . IBKR.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ replyid: Please use the \"id\" from the response of \"Place Order\" endpoint
  -> IBKR.Common.ClientT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
post_iserver_reply__replyid_Raw replyid = GHC.Base.id (IBKR.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/iserver/reply/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ IBKR.Common.stringifyModel replyid)) GHC.Base.++ ""))) GHC.Base.mempty)
-- | > POST /iserver/reply/{replyid}
-- 
-- The same as 'post_iserver_reply__replyid_' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
post_iserver_reply__replyid_WithConfigurationRaw :: forall m . IBKR.Common.MonadHTTP m => IBKR.Common.Configuration -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text -- ^ replyid: Please use the \"id\" from the response of \"Place Order\" endpoint
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
post_iserver_reply__replyid_WithConfigurationRaw config
                                                 replyid = GHC.Base.id (IBKR.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/iserver/reply/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ IBKR.Common.stringifyModel replyid)) GHC.Base.++ ""))) GHC.Base.mempty)
