-- ~\~ language=Haskell filename=src/P01.hs
-- ~\~ begin <<docs/README.md|P01>>[0]
module P01 where

type HostName = Int
type PortNumber = Int

data Message = Connect HostName PortNumber
             | GetPeers
             | Status [Peer]
             | Newtx Tx
             | Oldtx Tx Tx
             | Quit
             | Unknown String
             deriving(Read, Show)

-- ~\~ end
-- ~\~ begin <<docs/README.md|P01>>[1]
type Tx = Int
-- ~\~ end
-- ~\~ begin <<docs/README.md|P01>>[2]
data Peer = Peer HostName PortNumber
    deriving (Show, Read, Eq, Ord)
-- ~\~ end
