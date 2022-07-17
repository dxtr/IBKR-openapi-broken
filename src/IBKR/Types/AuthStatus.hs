-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema AuthStatus
module IBKR.Types.AuthStatus where

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

-- | Defines the object schema located at @components.schemas.authStatus@ in the specification.
-- 
-- 
data AuthStatus = AuthStatus {
  -- | authenticated: Brokerage session is authenticated
  authStatusAuthenticated :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | competing: Brokerage session is competing, e.g. user is logged in to IBKR Mobile, WebTrader, TWS or other trading platforms.
  , authStatusCompeting :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | connected: Connected to backend
  , authStatusConnected :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | fail: Authentication failed, why.
  , authStatusFail :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | message: System messages that may affect trading
  , authStatusMessage :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | prompts: Prompt messages that may affect trading or the account
  , authStatusPrompts :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AuthStatus
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authenticated" Data.Aeson.Types.ToJSON..=)) (authStatusAuthenticated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("competing" Data.Aeson.Types.ToJSON..=)) (authStatusCompeting obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("connected" Data.Aeson.Types.ToJSON..=)) (authStatusConnected obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fail" Data.Aeson.Types.ToJSON..=)) (authStatusFail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("message" Data.Aeson.Types.ToJSON..=)) (authStatusMessage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("prompts" Data.Aeson.Types.ToJSON..=)) (authStatusPrompts obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authenticated" Data.Aeson.Types.ToJSON..=)) (authStatusAuthenticated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("competing" Data.Aeson.Types.ToJSON..=)) (authStatusCompeting obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("connected" Data.Aeson.Types.ToJSON..=)) (authStatusConnected obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fail" Data.Aeson.Types.ToJSON..=)) (authStatusFail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("message" Data.Aeson.Types.ToJSON..=)) (authStatusMessage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("prompts" Data.Aeson.Types.ToJSON..=)) (authStatusPrompts obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON AuthStatus
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AuthStatus" (\obj -> (((((GHC.Base.pure AuthStatus GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "authenticated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "competing")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "connected")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "fail")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "prompts"))
-- | Create a new 'AuthStatus' with all required fields.
mkAuthStatus :: AuthStatus
mkAuthStatus = AuthStatus{authStatusAuthenticated = GHC.Maybe.Nothing,
                          authStatusCompeting = GHC.Maybe.Nothing,
                          authStatusConnected = GHC.Maybe.Nothing,
                          authStatusFail = GHC.Maybe.Nothing,
                          authStatusMessage = GHC.Maybe.Nothing,
                          authStatusPrompts = GHC.Maybe.Nothing}
