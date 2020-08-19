module Main

import System.File
import Network.Curl.Easy
import Network.Curl.Easy.Enum
import Network.Curl.Easy.FFI

import System.FFI

data TestCase = TestC String (IO Bool)

doTest : String -> IO Bool -> TestCase
doTest = TestC

runTestCase : TestCase -> IO ()
runTestCase (TestC name test) = do
  if !test
    then putStrLn $ name ++ " :: Ok"
    else putStrLn $ name ++ " :: FAILED"

testInitCleaup : TestCase
testInitCleaup = doTest "initCleanup" $
  do
    curl <- curl_easy_init
    curl_easy_cleanup curl
    pure True

  
testRequestGoogle : TestCase
testRequestGoogle = doTest "requestGoogle" $
  do
    putStrLn "init"
    curl <- curl_easy_init
    putStrLn $ "Set url with opt code:" ++ show (toCode CurlOptUrl)
    CurlEOk <- curl_easy_setopt curl CurlOptUrl "https://www.google.com"
        | err => (putStrLn $ "Failed with error: " ++ show err) *> pure False

    putStrLn "Perform"
    CurlEOk <- curl_easy_perform curl
        | err => (putStrLn $ "Failed with error: " ++ show err) *> pure False

    putStrLn "Cleanup"
    curl_easy_cleanup curl

    pure True

      
testRequestToFile : TestCase
testRequestToFile = doTest "testRequestToFile" $
  do
    putStrLn "init"
    curl <- curl_easy_init
    putStrLn $ "Set url with opt code:" ++ show (toCode CurlOptUrl)
    CurlEOk <- curl_easy_setopt curl CurlOptUrl "https://www.google.com"
        | err => (putStrLn $ "Failed with error: " ++ show err) *> pure False

    putStrLn "New File"
    Right (FHandle file) <- openFile "/tmp/idris2-curl.tmp" WriteTruncate
        | Left err => (putStrLn $ "File creation failed: " ++ show err) *> pure False
    
    putStrLn "Set write func"
    CurlEOk <- curl_easy_setopt curl CurlOptWritedata (ObjectPtrFile file)
        | err => (putStrLn $ "CurlOptWritefunction with error: " ++ show err) *> pure False

    putStrLn "Perform"
    CurlEOk <- curl_easy_perform curl
        | err => (putStrLn $ "Failed with error: " ++ show err) *> pure False

    putStrLn "Cleanup"
    curl_easy_cleanup curl

    pure True

main : IO ()
main = do
  runTestCase testInitCleaup
  runTestCase testRequestGoogle
  runTestCase testRequestToFile

