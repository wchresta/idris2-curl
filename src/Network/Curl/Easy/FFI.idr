module Network.Curl.Easy.FFI

import System.File
import System.FFI
import Data.Buffer

%default total

private
curl : String -> String
curl func = "C:" ++ func ++ ",libcurl"

-- CURL *curl_easy_init( );
export
%foreign (curl "curl_easy_init")
prim__curl_easy_init : PrimIO AnyPtr

-- void curl_easy_cleanup(CURL *handle);
export
%foreign (curl "curl_easy_cleanup")
prim__curl_easy_cleanup : AnyPtr -> PrimIO ()


{-
 All options are set with an option followed by a parameter.
 That parameter can be a long, a function pointer, an object
 pointer or a curl_off_t, depending on what the specific option
 expects.
-}
-- CURLcode curl_easy_setopt(CURL *handle, CURLoption option, parameter);
export
%foreign (curl "curl_easy_setopt")
prim__curl_easy_setopt_long : AnyPtr -> Int -> Bits64 -> PrimIO Int

export
%foreign (curl "curl_easy_setopt")
prim__curl_easy_setopt_ptr : AnyPtr -> Int -> AnyPtr -> PrimIO Int

export
%foreign (curl "curl_easy_setopt")
prim__curl_easy_setopt_str : AnyPtr -> Int -> String -> PrimIO Int

export
%foreign (curl "curl_easy_setopt")
prim__curl_easy_setopt_buf : AnyPtr -> Int -> Buffer -> PrimIO Int

export
%foreign (curl "curl_easy_setopt")
prim__curl_easy_setopt_file : AnyPtr -> Int -> FilePtr -> PrimIO Int

-- CURLcode curl_easy_perform(CURL *easy_handle);
export
%foreign (curl "curl_easy_perform")
prim__curl_easy_perform : AnyPtr -> PrimIO Int

-- CURLcode curl_easy_getinfo(CURL *curl, CURLINFO info, ... );
export
%foreign (curl "curl_easy_getinfo")
prim__curl_easy_getinfo : AnyPtr -> Int -> AnyPtr -> PrimIO Int

