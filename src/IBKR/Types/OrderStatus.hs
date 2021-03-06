-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema OrderStatus
module IBKR.Types.OrderStatus where

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

-- | Defines the object schema located at @components.schemas.order-status@ in the specification.
-- 
-- contains all the details of an order
data Order_status = Order_status {
  -- | account: account id
  order_statusAccount :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | alert_active
  , order_statusAlert_active :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | allowed_duplicate_opposite: Returns true if contract supports duplicate\/opposite side order.
  , order_statusAllowed_duplicate_opposite :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | available_chart_periods: List of available chart periods
  , order_statusAvailable_chart_periods :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | bg_color: Background color in hex format
  , order_statusBg_color :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | cannot_cancel_order: If true not allowed to cancel order
  , order_statusCannot_cancel_order :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | child_order_type: type of the child order
  , order_statusChild_order_type :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | company_name: Contracts company name
  , order_statusCompany_name :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | conidex: conid and exchange. Format supports conid or conid\@exchange
  , order_statusConidex :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | contract_description_1: Format contract name
  , order_statusContract_description_1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | cum_fill: Cumulative fill
  , order_statusCum_fill :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | currency: Contract traded currency
  , order_statusCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | deactivate_order: If true order is de-activated
  , order_statusDeactivate_order :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | editable_fields: Fields that can be edited in escaped unicode characters
  , order_statusEditable_fields :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | exit_strategy_chart_description: Position description to display on chart
  , order_statusExit_strategy_chart_description :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | exit_strategy_display_price: Position display price
  , order_statusExit_strategy_display_price :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | exit_strategy_tool_availability: * 1: If your account has position or order for contract * 0: If your account has no position or order for contract
  , order_statusExit_strategy_tool_availability :: (GHC.Maybe.Maybe Order_statusExit_strategy_tool_availability)
  -- | fg_color: Foreground color in hex format
  , order_statusFg_color :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | limit_price: Limit price
  , order_statusLimit_price :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | listing_exchange: Trading Exchange or Venue
  , order_statusListing_exchange :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | oca_group_id: only exists for oca orders, oca orders in same group will have same id
  , order_statusOca_group_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | option_acct
  , order_statusOption_acct :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | order_description: Format description of order
  , order_statusOrder_description :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | order_description_with_contract: order_description with the symbol
  , order_statusOrder_description_with_contract :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | order_id: system generated order id, unique per account
  , order_statusOrder_id :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | order_not_editable: If true not allowed to modify order
  , order_statusOrder_not_editable :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | order_status: *  PendingSubmit - Indicates the order was sent, but confirmation has not been received that it has been received by the destination.
  --                    Occurs most commonly if an exchange is closed.
  -- *  PendingCancel - Indicates that a request has been sent to cancel an order but confirmation has not been received of its cancellation. *  PreSubmitted - Indicates that a simulated order type has been accepted by the IBKR system and that this order has yet to be elected.
  --                   The order is held in the IBKR system until the election criteria are met. At that time the order is transmitted to the order destination as specified.
  -- *  Submitted - Indicates that the order has been accepted at the order destination and is working. *  Cancelled - Indicates that the balance of the order has been confirmed cancelled by the IB system.
  --                This could occur unexpectedly when IB or the destination has rejected the order.
  -- *  Filled - Indicates that the order has been completely filled. *  Inactive - Indicates the order is not working, for instance if the order was invalid and triggered an error message,
  --               or if the order was to short a security and shares have not yet been located.
  , order_statusOrder_status :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | order_status_description: Description of the order status
  , order_statusOrder_status_description :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | order_time: Time of status update in unix time
  , order_statusOrder_time :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | order_type: Types of orders
  , order_statusOrder_type :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | outside_rth: If true order trades outside regular trading hours
  , order_statusOutside_rth :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | request_id: order request id
  , order_statusRequest_id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | sec_type: Asset class
  , order_statusSec_type :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | side: The side of the market of the order.
  --   * B - Buy contract near posted ask price
  --   * S - Sell contract near posted bid price
  --   * X - Option expired
  , order_statusSide :: (GHC.Maybe.Maybe Order_statusSide)
  -- | size: Quantity updated
  , order_statusSize :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | size_and_fills: Format fillQuantity\\totalQuantity
  , order_statusSize_and_fills :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | stop_price: Stop price
  , order_statusStop_price :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | sub_type: order sub-type
  , order_statusSub_type :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | symbol: Underlying symbol
  , order_statusSymbol :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | tif: Time-in-Force - length of time order will continue working before it is canceled.
  , order_statusTif :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | total_size: Total quantity
  , order_statusTotal_size :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | use_price_mgmt_algo: If true price management algo is enabled, refer to https:\/\/www.interactivebrokers.com\/en\/index.php?f=43423
  , order_statusUse_price_mgmt_algo :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Order_status
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account" Data.Aeson.Types.ToJSON..=)) (order_statusAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alert_active" Data.Aeson.Types.ToJSON..=)) (order_statusAlert_active obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("allowed_duplicate_opposite" Data.Aeson.Types.ToJSON..=)) (order_statusAllowed_duplicate_opposite obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("available_chart_periods" Data.Aeson.Types.ToJSON..=)) (order_statusAvailable_chart_periods obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bg_color" Data.Aeson.Types.ToJSON..=)) (order_statusBg_color obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cannot_cancel_order" Data.Aeson.Types.ToJSON..=)) (order_statusCannot_cancel_order obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("child_order_type" Data.Aeson.Types.ToJSON..=)) (order_statusChild_order_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("company_name" Data.Aeson.Types.ToJSON..=)) (order_statusCompany_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("conidex" Data.Aeson.Types.ToJSON..=)) (order_statusConidex obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("contract_description_1" Data.Aeson.Types.ToJSON..=)) (order_statusContract_description_1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cum_fill" Data.Aeson.Types.ToJSON..=)) (order_statusCum_fill obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (order_statusCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("deactivate_order" Data.Aeson.Types.ToJSON..=)) (order_statusDeactivate_order obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("editable_fields" Data.Aeson.Types.ToJSON..=)) (order_statusEditable_fields obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exit_strategy_chart_description" Data.Aeson.Types.ToJSON..=)) (order_statusExit_strategy_chart_description obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exit_strategy_display_price" Data.Aeson.Types.ToJSON..=)) (order_statusExit_strategy_display_price obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exit_strategy_tool_availability" Data.Aeson.Types.ToJSON..=)) (order_statusExit_strategy_tool_availability obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fg_color" Data.Aeson.Types.ToJSON..=)) (order_statusFg_color obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("limit_price" Data.Aeson.Types.ToJSON..=)) (order_statusLimit_price obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("listing_exchange" Data.Aeson.Types.ToJSON..=)) (order_statusListing_exchange obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("oca_group_id" Data.Aeson.Types.ToJSON..=)) (order_statusOca_group_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("option_acct" Data.Aeson.Types.ToJSON..=)) (order_statusOption_acct obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_description" Data.Aeson.Types.ToJSON..=)) (order_statusOrder_description obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_description_with_contract" Data.Aeson.Types.ToJSON..=)) (order_statusOrder_description_with_contract obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_id" Data.Aeson.Types.ToJSON..=)) (order_statusOrder_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_not_editable" Data.Aeson.Types.ToJSON..=)) (order_statusOrder_not_editable obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_status" Data.Aeson.Types.ToJSON..=)) (order_statusOrder_status obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_status_description" Data.Aeson.Types.ToJSON..=)) (order_statusOrder_status_description obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_time" Data.Aeson.Types.ToJSON..=)) (order_statusOrder_time obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_type" Data.Aeson.Types.ToJSON..=)) (order_statusOrder_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("outside_rth" Data.Aeson.Types.ToJSON..=)) (order_statusOutside_rth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("request_id" Data.Aeson.Types.ToJSON..=)) (order_statusRequest_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sec_type" Data.Aeson.Types.ToJSON..=)) (order_statusSec_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("side" Data.Aeson.Types.ToJSON..=)) (order_statusSide obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("size" Data.Aeson.Types.ToJSON..=)) (order_statusSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("size_and_fills" Data.Aeson.Types.ToJSON..=)) (order_statusSize_and_fills obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("stop_price" Data.Aeson.Types.ToJSON..=)) (order_statusStop_price obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sub_type" Data.Aeson.Types.ToJSON..=)) (order_statusSub_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("symbol" Data.Aeson.Types.ToJSON..=)) (order_statusSymbol obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tif" Data.Aeson.Types.ToJSON..=)) (order_statusTif obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("total_size" Data.Aeson.Types.ToJSON..=)) (order_statusTotal_size obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("use_price_mgmt_algo" Data.Aeson.Types.ToJSON..=)) (order_statusUse_price_mgmt_algo obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account" Data.Aeson.Types.ToJSON..=)) (order_statusAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alert_active" Data.Aeson.Types.ToJSON..=)) (order_statusAlert_active obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("allowed_duplicate_opposite" Data.Aeson.Types.ToJSON..=)) (order_statusAllowed_duplicate_opposite obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("available_chart_periods" Data.Aeson.Types.ToJSON..=)) (order_statusAvailable_chart_periods obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bg_color" Data.Aeson.Types.ToJSON..=)) (order_statusBg_color obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cannot_cancel_order" Data.Aeson.Types.ToJSON..=)) (order_statusCannot_cancel_order obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("child_order_type" Data.Aeson.Types.ToJSON..=)) (order_statusChild_order_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("company_name" Data.Aeson.Types.ToJSON..=)) (order_statusCompany_name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("conidex" Data.Aeson.Types.ToJSON..=)) (order_statusConidex obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("contract_description_1" Data.Aeson.Types.ToJSON..=)) (order_statusContract_description_1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cum_fill" Data.Aeson.Types.ToJSON..=)) (order_statusCum_fill obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (order_statusCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("deactivate_order" Data.Aeson.Types.ToJSON..=)) (order_statusDeactivate_order obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("editable_fields" Data.Aeson.Types.ToJSON..=)) (order_statusEditable_fields obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exit_strategy_chart_description" Data.Aeson.Types.ToJSON..=)) (order_statusExit_strategy_chart_description obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exit_strategy_display_price" Data.Aeson.Types.ToJSON..=)) (order_statusExit_strategy_display_price obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exit_strategy_tool_availability" Data.Aeson.Types.ToJSON..=)) (order_statusExit_strategy_tool_availability obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fg_color" Data.Aeson.Types.ToJSON..=)) (order_statusFg_color obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("limit_price" Data.Aeson.Types.ToJSON..=)) (order_statusLimit_price obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("listing_exchange" Data.Aeson.Types.ToJSON..=)) (order_statusListing_exchange obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("oca_group_id" Data.Aeson.Types.ToJSON..=)) (order_statusOca_group_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("option_acct" Data.Aeson.Types.ToJSON..=)) (order_statusOption_acct obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_description" Data.Aeson.Types.ToJSON..=)) (order_statusOrder_description obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_description_with_contract" Data.Aeson.Types.ToJSON..=)) (order_statusOrder_description_with_contract obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_id" Data.Aeson.Types.ToJSON..=)) (order_statusOrder_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_not_editable" Data.Aeson.Types.ToJSON..=)) (order_statusOrder_not_editable obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_status" Data.Aeson.Types.ToJSON..=)) (order_statusOrder_status obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_status_description" Data.Aeson.Types.ToJSON..=)) (order_statusOrder_status_description obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_time" Data.Aeson.Types.ToJSON..=)) (order_statusOrder_time obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("order_type" Data.Aeson.Types.ToJSON..=)) (order_statusOrder_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("outside_rth" Data.Aeson.Types.ToJSON..=)) (order_statusOutside_rth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("request_id" Data.Aeson.Types.ToJSON..=)) (order_statusRequest_id obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sec_type" Data.Aeson.Types.ToJSON..=)) (order_statusSec_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("side" Data.Aeson.Types.ToJSON..=)) (order_statusSide obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("size" Data.Aeson.Types.ToJSON..=)) (order_statusSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("size_and_fills" Data.Aeson.Types.ToJSON..=)) (order_statusSize_and_fills obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("stop_price" Data.Aeson.Types.ToJSON..=)) (order_statusStop_price obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sub_type" Data.Aeson.Types.ToJSON..=)) (order_statusSub_type obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("symbol" Data.Aeson.Types.ToJSON..=)) (order_statusSymbol obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tif" Data.Aeson.Types.ToJSON..=)) (order_statusTif obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("total_size" Data.Aeson.Types.ToJSON..=)) (order_statusTotal_size obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("use_price_mgmt_algo" Data.Aeson.Types.ToJSON..=)) (order_statusUse_price_mgmt_algo obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Order_status
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Order_status" (\obj -> (((((((((((((((((((((((((((((((((((((((((GHC.Base.pure Order_status GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "alert_active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "allowed_duplicate_opposite")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "available_chart_periods")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bg_color")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cannot_cancel_order")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "child_order_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "company_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "conidex")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "contract_description_1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cum_fill")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "deactivate_order")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "editable_fields")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "exit_strategy_chart_description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "exit_strategy_display_price")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "exit_strategy_tool_availability")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "fg_color")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "limit_price")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "listing_exchange")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "oca_group_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "option_acct")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "order_description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "order_description_with_contract")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "order_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "order_not_editable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "order_status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "order_status_description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "order_time")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "order_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "outside_rth")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "request_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sec_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "side")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "size_and_fills")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "stop_price")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sub_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "symbol")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tif")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "total_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "use_price_mgmt_algo"))
-- | Create a new 'Order_status' with all required fields.
mkOrder_status :: Order_status
mkOrder_status = Order_status{order_statusAccount = GHC.Maybe.Nothing,
                              order_statusAlert_active = GHC.Maybe.Nothing,
                              order_statusAllowed_duplicate_opposite = GHC.Maybe.Nothing,
                              order_statusAvailable_chart_periods = GHC.Maybe.Nothing,
                              order_statusBg_color = GHC.Maybe.Nothing,
                              order_statusCannot_cancel_order = GHC.Maybe.Nothing,
                              order_statusChild_order_type = GHC.Maybe.Nothing,
                              order_statusCompany_name = GHC.Maybe.Nothing,
                              order_statusConidex = GHC.Maybe.Nothing,
                              order_statusContract_description_1 = GHC.Maybe.Nothing,
                              order_statusCum_fill = GHC.Maybe.Nothing,
                              order_statusCurrency = GHC.Maybe.Nothing,
                              order_statusDeactivate_order = GHC.Maybe.Nothing,
                              order_statusEditable_fields = GHC.Maybe.Nothing,
                              order_statusExit_strategy_chart_description = GHC.Maybe.Nothing,
                              order_statusExit_strategy_display_price = GHC.Maybe.Nothing,
                              order_statusExit_strategy_tool_availability = GHC.Maybe.Nothing,
                              order_statusFg_color = GHC.Maybe.Nothing,
                              order_statusLimit_price = GHC.Maybe.Nothing,
                              order_statusListing_exchange = GHC.Maybe.Nothing,
                              order_statusOca_group_id = GHC.Maybe.Nothing,
                              order_statusOption_acct = GHC.Maybe.Nothing,
                              order_statusOrder_description = GHC.Maybe.Nothing,
                              order_statusOrder_description_with_contract = GHC.Maybe.Nothing,
                              order_statusOrder_id = GHC.Maybe.Nothing,
                              order_statusOrder_not_editable = GHC.Maybe.Nothing,
                              order_statusOrder_status = GHC.Maybe.Nothing,
                              order_statusOrder_status_description = GHC.Maybe.Nothing,
                              order_statusOrder_time = GHC.Maybe.Nothing,
                              order_statusOrder_type = GHC.Maybe.Nothing,
                              order_statusOutside_rth = GHC.Maybe.Nothing,
                              order_statusRequest_id = GHC.Maybe.Nothing,
                              order_statusSec_type = GHC.Maybe.Nothing,
                              order_statusSide = GHC.Maybe.Nothing,
                              order_statusSize = GHC.Maybe.Nothing,
                              order_statusSize_and_fills = GHC.Maybe.Nothing,
                              order_statusStop_price = GHC.Maybe.Nothing,
                              order_statusSub_type = GHC.Maybe.Nothing,
                              order_statusSymbol = GHC.Maybe.Nothing,
                              order_statusTif = GHC.Maybe.Nothing,
                              order_statusTotal_size = GHC.Maybe.Nothing,
                              order_statusUse_price_mgmt_algo = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.order-status.properties.exit_strategy_tool_availability@ in the specification.
-- 
-- * 1: If your account has position or order for contract * 0: If your account has no position or order for contract
data Order_statusExit_strategy_tool_availability =
   Order_statusExit_strategy_tool_availabilityOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | Order_statusExit_strategy_tool_availabilityTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | Order_statusExit_strategy_tool_availabilityEnum1 -- ^ Represents the JSON value @"1"@
  | Order_statusExit_strategy_tool_availabilityEnum0 -- ^ Represents the JSON value @"0"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Order_statusExit_strategy_tool_availability
    where toJSON (Order_statusExit_strategy_tool_availabilityOther val) = val
          toJSON (Order_statusExit_strategy_tool_availabilityTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (Order_statusExit_strategy_tool_availabilityEnum1) = "1"
          toJSON (Order_statusExit_strategy_tool_availabilityEnum0) = "0"
instance Data.Aeson.Types.FromJSON.FromJSON Order_statusExit_strategy_tool_availability
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "1" -> Order_statusExit_strategy_tool_availabilityEnum1
                                            | val GHC.Classes.== "0" -> Order_statusExit_strategy_tool_availabilityEnum0
                                            | GHC.Base.otherwise -> Order_statusExit_strategy_tool_availabilityOther val)
-- | Defines the enum schema located at @components.schemas.order-status.properties.side@ in the specification.
-- 
-- The side of the market of the order.
--   * B - Buy contract near posted ask price
--   * S - Sell contract near posted bid price
--   * X - Option expired
data Order_statusSide =
   Order_statusSideOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | Order_statusSideTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | Order_statusSideEnumB -- ^ Represents the JSON value @"B"@
  | Order_statusSideEnumS -- ^ Represents the JSON value @"S"@
  | Order_statusSideEnumX -- ^ Represents the JSON value @"X"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Order_statusSide
    where toJSON (Order_statusSideOther val) = val
          toJSON (Order_statusSideTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (Order_statusSideEnumB) = "B"
          toJSON (Order_statusSideEnumS) = "S"
          toJSON (Order_statusSideEnumX) = "X"
instance Data.Aeson.Types.FromJSON.FromJSON Order_statusSide
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "B" -> Order_statusSideEnumB
                                            | val GHC.Classes.== "S" -> Order_statusSideEnumS
                                            | val GHC.Classes.== "X" -> Order_statusSideEnumX
                                            | GHC.Base.otherwise -> Order_statusSideOther val)
