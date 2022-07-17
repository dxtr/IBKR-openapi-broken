-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Summary
module IBKR.Types.Summary where

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

-- | Defines the object schema located at @components.schemas.summary@ in the specification.
-- 
-- 
data Summary = Summary {
  -- | amount
  summaryAmount :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | currency
  , summaryCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | isNull
  , summaryIsNull :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | timestamp
  , summaryTimestamp :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | value
  , summaryValue :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Summary
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (summaryAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (summaryCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("isNull" Data.Aeson.Types.ToJSON..=)) (summaryIsNull obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("timestamp" Data.Aeson.Types.ToJSON..=)) (summaryTimestamp obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("value" Data.Aeson.Types.ToJSON..=)) (summaryValue obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (summaryAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (summaryCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("isNull" Data.Aeson.Types.ToJSON..=)) (summaryIsNull obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("timestamp" Data.Aeson.Types.ToJSON..=)) (summaryTimestamp obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("value" Data.Aeson.Types.ToJSON..=)) (summaryValue obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Summary
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Summary" (\obj -> ((((GHC.Base.pure Summary GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "isNull")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "timestamp")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "value"))
-- | Create a new 'Summary' with all required fields.
mkSummary :: Summary
mkSummary = Summary{summaryAmount = GHC.Maybe.Nothing,
                    summaryCurrency = GHC.Maybe.Nothing,
                    summaryIsNull = GHC.Maybe.Nothing,
                    summaryTimestamp = GHC.Maybe.Nothing,
                    summaryValue = GHC.Maybe.Nothing}
