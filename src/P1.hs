module P1 where

import Network

type Tx = Int

data Peer = Peer HostName PortNumber
    deriving (Show, Read, Eq, Ord)

data Message = Connect HostName PortNumber
             | GetPeers
             | Status [Peer]
             | Newtx Tx
             | Oldtx Tx Tx
             | Quit
             | Unknown String
             deriving (Show, Read)
