{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_hello_world (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [1,0,0,2] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "C:\\Users\\Joe Gannon\\Open Source\\Excerism\\haskell\\hello-world\\.stack-work\\install\\02136e14\\bin"
libdir     = "C:\\Users\\Joe Gannon\\Open Source\\Excerism\\haskell\\hello-world\\.stack-work\\install\\02136e14\\lib\\x86_64-windows-ghc-8.0.2\\hello-world-1.0.0.2-2glg4pYiup1BPRFi7wuE2h"
dynlibdir  = "C:\\Users\\Joe Gannon\\Open Source\\Excerism\\haskell\\hello-world\\.stack-work\\install\\02136e14\\lib\\x86_64-windows-ghc-8.0.2"
datadir    = "C:\\Users\\Joe Gannon\\Open Source\\Excerism\\haskell\\hello-world\\.stack-work\\install\\02136e14\\share\\x86_64-windows-ghc-8.0.2\\hello-world-1.0.0.2"
libexecdir = "C:\\Users\\Joe Gannon\\Open Source\\Excerism\\haskell\\hello-world\\.stack-work\\install\\02136e14\\libexec"
sysconfdir = "C:\\Users\\Joe Gannon\\Open Source\\Excerism\\haskell\\hello-world\\.stack-work\\install\\02136e14\\etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "hello_world_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "hello_world_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "hello_world_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "hello_world_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "hello_world_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "hello_world_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)
