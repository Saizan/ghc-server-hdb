#!/bin/bash

cabal build hdb ghc-server-hdb ghc-client

cabal run exe:ghc-server-hdb -- --hdb-path $(cabal list-bin hdb) $@
