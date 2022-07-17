-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}

-- | Contains the default configuration
module IBKR.Configuration where

import qualified Data.Text
import qualified GHC.Types 
import qualified IBKR.Common

-- | The default url specified by the OpenAPI specification
-- 
-- @https://localhost:5000/v1/api@
defaultURL = Data.Text.pack "https://localhost:5000/v1/api"
-- | The default application name used in the @User-Agent@ header which is based on the @info.title@ field of the specification
-- 
-- @Client Portal Web API@
defaultApplicationName = Data.Text.pack "Client Portal Web API"
-- | The default configuration containing the 'defaultURL' and no authorization
defaultConfiguration = IBKR.Common.Configuration defaultURL IBKR.Common.anonymousSecurityScheme GHC.Types.True defaultApplicationName
