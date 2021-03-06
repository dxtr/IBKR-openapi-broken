-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema HistoryResult
module IBKR.Types.HistoryResult where

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

-- | Defines the object schema located at @components.schemas.history-result@ in the specification.
-- 
-- 
data History_result = History_result {
  -- | bars
  history_resultBars :: (GHC.Maybe.Maybe History_resultBars)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON History_result
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bars" Data.Aeson.Types.ToJSON..=)) (history_resultBars obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bars" Data.Aeson.Types.ToJSON..=)) (history_resultBars obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON History_result
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "History_result" (\obj -> GHC.Base.pure History_result GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bars"))
-- | Create a new 'History_result' with all required fields.
mkHistory_result :: History_result
mkHistory_result = History_result{history_resultBars = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.history-result.properties.bars@ in the specification.
-- 
-- 
data History_resultBars = History_resultBars {
  -- | data
  history_resultBarsData :: (GHC.Maybe.Maybe ([History_resultBarsData]))
  -- | endTime: End Time in the format YYYYMMDD.
  , history_resultBarsEndTime :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | endTimeVal: End Time Value - Formatted in unix time in ms.
  , history_resultBarsEndTimeVal :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | mktDataDelay: If 0 then data is returned in real time. Otherwise will return the number of seconds history data is delayed.
  , history_resultBarsMktDataDelay :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | open: First price returned for bar value.
  , history_resultBarsOpen :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | points: total number of data points.
  , history_resultBarsPoints :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | startTime: Start Time in the format YYYYMMDD.
  , history_resultBarsStartTime :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | startTimeVal: Start Time Value - Formatted in unix time in ms.
  , history_resultBarsStartTimeVal :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON History_resultBars
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("data" Data.Aeson.Types.ToJSON..=)) (history_resultBarsData obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("endTime" Data.Aeson.Types.ToJSON..=)) (history_resultBarsEndTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("endTimeVal" Data.Aeson.Types.ToJSON..=)) (history_resultBarsEndTimeVal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mktDataDelay" Data.Aeson.Types.ToJSON..=)) (history_resultBarsMktDataDelay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("open" Data.Aeson.Types.ToJSON..=)) (history_resultBarsOpen obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("points" Data.Aeson.Types.ToJSON..=)) (history_resultBarsPoints obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("startTime" Data.Aeson.Types.ToJSON..=)) (history_resultBarsStartTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("startTimeVal" Data.Aeson.Types.ToJSON..=)) (history_resultBarsStartTimeVal obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("data" Data.Aeson.Types.ToJSON..=)) (history_resultBarsData obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("endTime" Data.Aeson.Types.ToJSON..=)) (history_resultBarsEndTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("endTimeVal" Data.Aeson.Types.ToJSON..=)) (history_resultBarsEndTimeVal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mktDataDelay" Data.Aeson.Types.ToJSON..=)) (history_resultBarsMktDataDelay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("open" Data.Aeson.Types.ToJSON..=)) (history_resultBarsOpen obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("points" Data.Aeson.Types.ToJSON..=)) (history_resultBarsPoints obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("startTime" Data.Aeson.Types.ToJSON..=)) (history_resultBarsStartTime obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("startTimeVal" Data.Aeson.Types.ToJSON..=)) (history_resultBarsStartTimeVal obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON History_resultBars
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "History_resultBars" (\obj -> (((((((GHC.Base.pure History_resultBars GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "endTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "endTimeVal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "mktDataDelay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "open")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "points")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "startTime")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "startTimeVal"))
-- | Create a new 'History_resultBars' with all required fields.
mkHistory_resultBars :: History_resultBars
mkHistory_resultBars = History_resultBars{history_resultBarsData = GHC.Maybe.Nothing,
                                          history_resultBarsEndTime = GHC.Maybe.Nothing,
                                          history_resultBarsEndTimeVal = GHC.Maybe.Nothing,
                                          history_resultBarsMktDataDelay = GHC.Maybe.Nothing,
                                          history_resultBarsOpen = GHC.Maybe.Nothing,
                                          history_resultBarsPoints = GHC.Maybe.Nothing,
                                          history_resultBarsStartTime = GHC.Maybe.Nothing,
                                          history_resultBarsStartTimeVal = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.history-result.properties.bars.properties.data.items@ in the specification.
-- 
-- 
data History_resultBarsData = History_resultBarsData {
  -- | c: Close - Last price returned for bar value.
  history_resultBarsDataC :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | h: High - High price returned for bar value.
  , history_resultBarsDataH :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | l: Low - Last price returned for bar value.
  , history_resultBarsDataL :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | o: Open - First price returned for bar value.
  , history_resultBarsDataO :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | t: Time - Formatted in unix time in ms.
  , history_resultBarsDataT :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | v: Volume - Traded volume for bar value.
  , history_resultBarsDataV :: (GHC.Maybe.Maybe GHC.Types.Double)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON History_resultBarsData
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("c" Data.Aeson.Types.ToJSON..=)) (history_resultBarsDataC obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("h" Data.Aeson.Types.ToJSON..=)) (history_resultBarsDataH obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("l" Data.Aeson.Types.ToJSON..=)) (history_resultBarsDataL obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("o" Data.Aeson.Types.ToJSON..=)) (history_resultBarsDataO obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("t" Data.Aeson.Types.ToJSON..=)) (history_resultBarsDataT obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("v" Data.Aeson.Types.ToJSON..=)) (history_resultBarsDataV obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("c" Data.Aeson.Types.ToJSON..=)) (history_resultBarsDataC obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("h" Data.Aeson.Types.ToJSON..=)) (history_resultBarsDataH obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("l" Data.Aeson.Types.ToJSON..=)) (history_resultBarsDataL obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("o" Data.Aeson.Types.ToJSON..=)) (history_resultBarsDataO obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("t" Data.Aeson.Types.ToJSON..=)) (history_resultBarsDataT obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("v" Data.Aeson.Types.ToJSON..=)) (history_resultBarsDataV obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON History_resultBarsData
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "History_resultBarsData" (\obj -> (((((GHC.Base.pure History_resultBarsData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "c")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "h")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "l")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "o")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "t")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "v"))
-- | Create a new 'History_resultBarsData' with all required fields.
mkHistory_resultBarsData :: History_resultBarsData
mkHistory_resultBarsData = History_resultBarsData{history_resultBarsDataC = GHC.Maybe.Nothing,
                                                  history_resultBarsDataH = GHC.Maybe.Nothing,
                                                  history_resultBarsDataL = GHC.Maybe.Nothing,
                                                  history_resultBarsDataO = GHC.Maybe.Nothing,
                                                  history_resultBarsDataT = GHC.Maybe.Nothing,
                                                  history_resultBarsDataV = GHC.Maybe.Nothing}
