-- -----------------------------------------------------------------------------

-- |
-- Module      :  Text.IPv6Addr
-- Copyright   :  (c) Michel Boucey 2011-2013
-- License     :  BSD-Style
-- Maintainer  :  michel.boucey@gmail.com
-- Stability   :  provisional
--
-- Dealing with IPv6 address text representations, canonization and manipulations.
--

-- -----------------------------------------------------------------------------

module Text.IPv6Addr.Types where

import qualified Data.Text as T

data IPv4AddrToken = Dot | EightBits T.Text deriving (Eq,Show)

data IPv6Addr = IPv6Addr T.Text deriving (Eq,Show)

data IPv6AddrToken
    = SixteenBits T.Text -- ^ A four hexadecimal digits group representing a 16-Bit chunk
    | AllZeros           -- ^ An all zeros 16-Bit chunk
    | Colon              -- ^ A separator between 16-Bit chunks
    | DoubleColon        -- ^ A double-colon stands for a unique compression of many consecutive 16-Bit chunks
    | IPv4Addr T.Text    -- ^ An embedded IPv4 address as representation of the last 32-Bit
    deriving (Eq,Show)
