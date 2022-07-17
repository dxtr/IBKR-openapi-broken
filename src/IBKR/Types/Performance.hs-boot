module IBKR.Types.Performance where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified IBKR.Common
data Performance
instance Show Performance
instance Eq Performance
instance FromJSON Performance
instance ToJSON Performance
data PerformanceCps
instance Show PerformanceCps
instance Eq PerformanceCps
instance FromJSON PerformanceCps
instance ToJSON PerformanceCps
data PerformanceCpsData
instance Show PerformanceCpsData
instance Eq PerformanceCpsData
instance FromJSON PerformanceCpsData
instance ToJSON PerformanceCpsData
data PerformanceNav
instance Show PerformanceNav
instance Eq PerformanceNav
instance FromJSON PerformanceNav
instance ToJSON PerformanceNav
data PerformanceNavData
instance Show PerformanceNavData
instance Eq PerformanceNavData
instance FromJSON PerformanceNavData
instance ToJSON PerformanceNavData
data PerformanceTpps
instance Show PerformanceTpps
instance Eq PerformanceTpps
instance FromJSON PerformanceTpps
instance ToJSON PerformanceTpps
data PerformanceTppsData
instance Show PerformanceTppsData
instance Eq PerformanceTppsData
instance FromJSON PerformanceTppsData
instance ToJSON PerformanceTppsData
