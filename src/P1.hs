module P1 where

import           Network.Simple.TCP (HostName, ServiceName)


type Tx = Int

data Peer = Peer HostName ServiceName
    deriving (Show, Read, Eq, Ord)

data Message = Connect HostName ServiceName
             | GetPeers
             | Status [Peer]
             | Newtx Tx
             | Oldtx Tx Tx
             | Quit
             | Unknown String
             deriving (Show, Read)
