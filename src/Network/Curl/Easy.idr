module Network.Curl.Easy

import System.File
import Data.Buffer

import Network.Curl.Easy.FFI
import Network.Curl.Easy.Enum

%default total

||| libcurl curl_easy raw objects
export
data Curl = CPtr AnyPtr

||| Extracts the raw AnyPtr to a libcurl curl object
export
unsafeCurlPtr : Curl -> AnyPtr
unsafeCurlPtr (CPtr ptr) = ptr

||| Create a new curl easy object. Never share between threads.
export
curl_easy_init : IO Curl
curl_easy_init = CPtr <$> primIO prim__curl_easy_init

||| Destroy a curl easy object. Do not pass Curl to anything else.
-- TODO: Enforce that every curl_easy_init is destroyed and never reused after
export
curl_easy_cleanup : Curl -> IO ()
curl_easy_cleanup (CPtr ptr) = primIO $ prim__curl_easy_cleanup ptr

public export
data ObjectPtr
    = ObjectPtrAny AnyPtr
    | ObjectPtrBuffer Buffer
    | ObjectPtrFile FilePtr

||| Idris 2 type representation of libcurl option types
public export
curlOptPrimitiveType : CurlOptType -> Type
curlOptPrimitiveType CurlOptTypeObjectpoint = ObjectPtr
curlOptPrimitiveType CurlOptTypeStringpoint = String
curlOptPrimitiveType CurlOptTypeLong = Bits64
curlOptPrimitiveType CurlOptTypeFunctionpoint = AnyPtr
curlOptPrimitiveType CurlOptTypeSlistpoint = Void -- Not implemented
curlOptPrimitiveType CurlOptTypeBlob = Void -- Not implemented
curlOptPrimitiveType CurlOptTypeOffT = Void -- Not implemented

-- Helper function for curl_easy_setopt with explicit type argument
private
curl_easy_setopt_typed : Curl
                       -> (optType : CurlOptType)
                       -> Int
                       -> curlOptPrimitiveType optType
                       -> IO CurlCode
curl_easy_setopt_typed (CPtr ptr) optType optCode param =
    map fromCode $ case optType of
        CurlOptTypeStringpoint => primIO $ prim__curl_easy_setopt_str ptr optCode param
        CurlOptTypeLong => primIO $ prim__curl_easy_setopt_long ptr optCode param
        CurlOptTypeFunctionpoint => primIO $ prim__curl_easy_setopt_file ptr optCode param
        CurlOptTypeObjectpoint => 
            case param of
                ObjectPtrAny op => primIO $ prim__curl_easy_setopt_ptr ptr optCode op
                ObjectPtrBuffer op => primIO $ prim__curl_easy_setopt_buf ptr optCode op
                ObjectPtrFile op => primIO $ prim__curl_easy_setopt_file ptr optCode op
        _ => pure $ toCode CurlENotBuiltIn

public export
parameterType : CurlOpt -> Type
parameterType = curlOptPrimitiveType . curlOptType

||| Set a curl easy option for the given curl object. Check libcurl reference for details.
export
curl_easy_setopt : Curl
                 -> (curlOpt : CurlOpt)
                 -> parameterType curlOpt
                 -> IO CurlCode
curl_easy_setopt curl opt param = 
    curl_easy_setopt_typed curl (curlOptType opt) (toCode opt) param

||| Destroy a curl easy object. Do not pass Curl to anything else.
-- TODO: Enforce that every curl_easy_init is destroyed and never reused after
export
curl_easy_perform : Curl -> IO CurlCode
curl_easy_perform (CPtr ptr) = map fromCode . primIO $ prim__curl_easy_perform ptr
