module Network.Curl.Easy.Enum

%default total

||| Convert from integer code representation
public export
interface FromCode a where
  fromCode : Int -> a

||| Convert to integer code representation
public export
interface ToCode a where
  toCode : a -> Int

public export
ToCode a => Eq a where
  a == b = toCode a == toCode b

public export
ToCode a => Ord a where
  compare a b = compare (toCode a) (toCode b)


||| Curl return codes (CURLcode)
public export
data CurlCode
    = CurlEOk
    | CurlEUnsupportedProtocol
    | CurlEFailedInit
    | CurlEUrlMalformat
    | CurlENotBuiltIn
    | CurlECouldntResolveProxy
    | CurlECouldntResolveHost
    | CurlECouldntConnect
    | CurlEWeirdServerReply
    | CurlERemoteAccessDenied
    | CurlEFtpAcceptFailed
    | CurlEFtpWeirdPassReply
    | CurlEFtpAcceptTimeout
    | CurlEFtpWeirdPasvReply
    | CurlEFtpWeird227Format
    | CurlEFtpCantGetHost
    | CurlEHttp2
    | CurlEFtpCouldntSetType
    | CurlEPartialFile
    | CurlEFtpCouldntRetrFile
    | CurlEObsolete20
    | CurlEQuoteError
    | CurlEHttpReturnedError
    | CurlEWriteError
    | CurlEObsolete24
    | CurlEUploadFailed
    | CurlEReadError
    | CurlEOutOfMemory
    | CurlEOperationTimedout
    | CurlEObsolete29
    | CurlEFtpPortFailed
    | CurlEFtpCouldntUseRest
    | CurlEObsolete32
    | CurlERangeError
    | CurlEHttpPostError
    | CurlESslConnectError
    | CurlEBadDownloadResume
    | CurlEFileCouldntReadFile
    | CurlELdapCannotBind
    | CurlELdapSearchFailed
    | CurlEObsolete40
    | CurlEFunctionNotFound
    | CurlEAbortedByCallback
    | CurlEBadFunctionArgument
    | CurlEObsolete44
    | CurlEInterfaceFailed
    | CurlEObsolete46
    | CurlETooManyRedirects
    | CurlEUnknownOption
    | CurlETelnetOptionSyntax
    | CurlEObsolete50
    | CurlEObsolete51
    | CurlEGotNothing
    | CurlESslEngineNotfound
    | CurlESslEngineSetfailed
    | CurlESendError
    | CurlERecvError
    | CurlEObsolete57
    | CurlESslCertproblem
    | CurlESslCipher
    | CurlEPeerFailedVerification
    | CurlEBadContentEncoding
    | CurlELdapInvalidUrl
    | CurlEFilesizeExceeded
    | CurlEUseSslFailed
    | CurlESendFailRewind
    | CurlESslEngineInitfailed
    | CurlELoginDenied
    | CurlETftpNotfound
    | CurlETftpPerm
    | CurlERemoteDiskFull
    | CurlETftpIllegal
    | CurlETftpUnknownid
    | CurlERemoteFileExists
    | CurlETftpNosuchuser
    | CurlEConvFailed
    | CurlEConvReqd
    | CurlESslCacertBadfile
    | CurlERemoteFileNotFound
    | CurlESsh
    | CurlESslShutdownFailed
    | CurlEAgain
    | CurlESslCrlBadfile
    | CurlESslIssuerError
    | CurlEFtpPretFailed
    | CurlERtspCseqError
    | CurlERtspSessionError
    | CurlEFtpBadFileList
    | CurlEChunkFailed
    | CurlENoConnectionAvailable
    | CurlESslPinnedpubkeynotmatch
    | CurlESslInvalidcertstatus
    | CurlEHttp2Stream
    | CurlERecursiveApiCall
    | CurlEAuthError
    | CurlEHttp3
    | CurlEQuicConnectError
    | CurlEUnknown

||| Cast a libcurl enum CURLCode to the CurlCode equivalent
public export
curlCodeFromCode : Int -> CurlCode
curlCodeFromCode 0 = CurlEOk
curlCodeFromCode 1 = CurlEUnsupportedProtocol
curlCodeFromCode 2 = CurlEFailedInit
curlCodeFromCode 3 = CurlEUrlMalformat
curlCodeFromCode 4 = CurlENotBuiltIn
curlCodeFromCode 5 = CurlECouldntResolveProxy
curlCodeFromCode 6 = CurlECouldntResolveHost
curlCodeFromCode 7 = CurlECouldntConnect
curlCodeFromCode 8 = CurlEWeirdServerReply
curlCodeFromCode 9 = CurlERemoteAccessDenied
curlCodeFromCode 10 = CurlEFtpAcceptFailed
curlCodeFromCode 11 = CurlEFtpWeirdPassReply
curlCodeFromCode 12 = CurlEFtpAcceptTimeout
curlCodeFromCode 13 = CurlEFtpWeirdPasvReply
curlCodeFromCode 14 = CurlEFtpWeird227Format
curlCodeFromCode 15 = CurlEFtpCantGetHost
curlCodeFromCode 16 = CurlEHttp2
curlCodeFromCode 17 = CurlEFtpCouldntSetType
curlCodeFromCode 18 = CurlEPartialFile
curlCodeFromCode 19 = CurlEFtpCouldntRetrFile
curlCodeFromCode 20 = CurlEObsolete20
curlCodeFromCode 21 = CurlEQuoteError
curlCodeFromCode 22 = CurlEHttpReturnedError
curlCodeFromCode 23 = CurlEWriteError
curlCodeFromCode 24 = CurlEObsolete24
curlCodeFromCode 25 = CurlEUploadFailed
curlCodeFromCode 26 = CurlEReadError
curlCodeFromCode 27 = CurlEOutOfMemory
curlCodeFromCode 28 = CurlEOperationTimedout
curlCodeFromCode 29 = CurlEObsolete29
curlCodeFromCode 30 = CurlEFtpPortFailed
curlCodeFromCode 31 = CurlEFtpCouldntUseRest
curlCodeFromCode 32 = CurlEObsolete32
curlCodeFromCode 33 = CurlERangeError
curlCodeFromCode 34 = CurlEHttpPostError
curlCodeFromCode 35 = CurlESslConnectError
curlCodeFromCode 36 = CurlEBadDownloadResume
curlCodeFromCode 37 = CurlEFileCouldntReadFile
curlCodeFromCode 38 = CurlELdapCannotBind
curlCodeFromCode 39 = CurlELdapSearchFailed
curlCodeFromCode 40 = CurlEObsolete40
curlCodeFromCode 41 = CurlEFunctionNotFound
curlCodeFromCode 42 = CurlEAbortedByCallback
curlCodeFromCode 43 = CurlEBadFunctionArgument
curlCodeFromCode 44 = CurlEObsolete44
curlCodeFromCode 45 = CurlEInterfaceFailed
curlCodeFromCode 46 = CurlEObsolete46
curlCodeFromCode 47 = CurlETooManyRedirects
curlCodeFromCode 48 = CurlEUnknownOption
curlCodeFromCode 49 = CurlETelnetOptionSyntax
curlCodeFromCode 50 = CurlEObsolete50
curlCodeFromCode 51 = CurlEObsolete51
curlCodeFromCode 52 = CurlEGotNothing
curlCodeFromCode 53 = CurlESslEngineNotfound
curlCodeFromCode 54 = CurlESslEngineSetfailed
curlCodeFromCode 55 = CurlESendError
curlCodeFromCode 56 = CurlERecvError
curlCodeFromCode 57 = CurlEObsolete57
curlCodeFromCode 58 = CurlESslCertproblem
curlCodeFromCode 59 = CurlESslCipher
curlCodeFromCode 60 = CurlEPeerFailedVerification
curlCodeFromCode 61 = CurlEBadContentEncoding
curlCodeFromCode 62 = CurlELdapInvalidUrl
curlCodeFromCode 63 = CurlEFilesizeExceeded
curlCodeFromCode 64 = CurlEUseSslFailed
curlCodeFromCode 65 = CurlESendFailRewind
curlCodeFromCode 66 = CurlESslEngineInitfailed
curlCodeFromCode 67 = CurlELoginDenied
curlCodeFromCode 68 = CurlETftpNotfound
curlCodeFromCode 69 = CurlETftpPerm
curlCodeFromCode 70 = CurlERemoteDiskFull
curlCodeFromCode 71 = CurlETftpIllegal
curlCodeFromCode 72 = CurlETftpUnknownid
curlCodeFromCode 73 = CurlERemoteFileExists
curlCodeFromCode 74 = CurlETftpNosuchuser
curlCodeFromCode 75 = CurlEConvFailed
curlCodeFromCode 76 = CurlEConvReqd
curlCodeFromCode 77 = CurlESslCacertBadfile
curlCodeFromCode 78 = CurlERemoteFileNotFound
curlCodeFromCode 79 = CurlESsh
curlCodeFromCode 80 = CurlESslShutdownFailed
curlCodeFromCode 81 = CurlEAgain
curlCodeFromCode 82 = CurlESslCrlBadfile
curlCodeFromCode 83 = CurlESslIssuerError
curlCodeFromCode 84 = CurlEFtpPretFailed
curlCodeFromCode 85 = CurlERtspCseqError
curlCodeFromCode 86 = CurlERtspSessionError
curlCodeFromCode 87 = CurlEFtpBadFileList
curlCodeFromCode 88 = CurlEChunkFailed
curlCodeFromCode 89 = CurlENoConnectionAvailable
curlCodeFromCode 90 = CurlESslPinnedpubkeynotmatch
curlCodeFromCode 91 = CurlESslInvalidcertstatus
curlCodeFromCode 92 = CurlEHttp2Stream
curlCodeFromCode 93 = CurlERecursiveApiCall
curlCodeFromCode 94 = CurlEAuthError
curlCodeFromCode 95 = CurlEHttp3
curlCodeFromCode 96 = CurlEQuicConnectError
curlCodeFromCode _  = CurlEUnknown

||| Given a CurlCode, return the libcurl enum CURLCode equivalent
public export
curlCodeToCode : CurlCode -> Int
curlCodeToCode CurlEOk = 0
curlCodeToCode CurlEUnsupportedProtocol = 1
curlCodeToCode CurlEFailedInit = 2
curlCodeToCode CurlEUrlMalformat = 3
curlCodeToCode CurlENotBuiltIn = 4
curlCodeToCode CurlECouldntResolveProxy = 5
curlCodeToCode CurlECouldntResolveHost = 6
curlCodeToCode CurlECouldntConnect = 7
curlCodeToCode CurlEWeirdServerReply = 8
curlCodeToCode CurlERemoteAccessDenied = 9
curlCodeToCode CurlEFtpAcceptFailed = 10
curlCodeToCode CurlEFtpWeirdPassReply = 11
curlCodeToCode CurlEFtpAcceptTimeout = 12
curlCodeToCode CurlEFtpWeirdPasvReply = 13
curlCodeToCode CurlEFtpWeird227Format = 14
curlCodeToCode CurlEFtpCantGetHost = 15
curlCodeToCode CurlEHttp2 = 16
curlCodeToCode CurlEFtpCouldntSetType = 17
curlCodeToCode CurlEPartialFile = 18
curlCodeToCode CurlEFtpCouldntRetrFile = 19
curlCodeToCode CurlEObsolete20 = 20
curlCodeToCode CurlEQuoteError = 21
curlCodeToCode CurlEHttpReturnedError = 22
curlCodeToCode CurlEWriteError = 23
curlCodeToCode CurlEObsolete24 = 24
curlCodeToCode CurlEUploadFailed = 25
curlCodeToCode CurlEReadError = 26
curlCodeToCode CurlEOutOfMemory = 27
curlCodeToCode CurlEOperationTimedout = 28
curlCodeToCode CurlEObsolete29 = 29
curlCodeToCode CurlEFtpPortFailed = 30
curlCodeToCode CurlEFtpCouldntUseRest = 31
curlCodeToCode CurlEObsolete32 = 32
curlCodeToCode CurlERangeError = 33
curlCodeToCode CurlEHttpPostError = 34
curlCodeToCode CurlESslConnectError = 35
curlCodeToCode CurlEBadDownloadResume = 36
curlCodeToCode CurlEFileCouldntReadFile = 37
curlCodeToCode CurlELdapCannotBind = 38
curlCodeToCode CurlELdapSearchFailed = 39
curlCodeToCode CurlEObsolete40 = 40
curlCodeToCode CurlEFunctionNotFound = 41
curlCodeToCode CurlEAbortedByCallback = 42
curlCodeToCode CurlEBadFunctionArgument = 43
curlCodeToCode CurlEObsolete44 = 44
curlCodeToCode CurlEInterfaceFailed = 45
curlCodeToCode CurlEObsolete46 = 46
curlCodeToCode CurlETooManyRedirects = 47
curlCodeToCode CurlEUnknownOption = 48
curlCodeToCode CurlETelnetOptionSyntax = 49
curlCodeToCode CurlEObsolete50 = 50
curlCodeToCode CurlEObsolete51 = 51
curlCodeToCode CurlEGotNothing = 52
curlCodeToCode CurlESslEngineNotfound = 53
curlCodeToCode CurlESslEngineSetfailed = 54
curlCodeToCode CurlESendError = 55
curlCodeToCode CurlERecvError = 56
curlCodeToCode CurlEObsolete57 = 57
curlCodeToCode CurlESslCertproblem = 58
curlCodeToCode CurlESslCipher = 59
curlCodeToCode CurlEPeerFailedVerification = 60
curlCodeToCode CurlEBadContentEncoding = 61
curlCodeToCode CurlELdapInvalidUrl = 62
curlCodeToCode CurlEFilesizeExceeded = 63
curlCodeToCode CurlEUseSslFailed = 64
curlCodeToCode CurlESendFailRewind = 65
curlCodeToCode CurlESslEngineInitfailed = 66
curlCodeToCode CurlELoginDenied = 67
curlCodeToCode CurlETftpNotfound = 68
curlCodeToCode CurlETftpPerm = 69
curlCodeToCode CurlERemoteDiskFull = 70
curlCodeToCode CurlETftpIllegal = 71
curlCodeToCode CurlETftpUnknownid = 72
curlCodeToCode CurlERemoteFileExists = 73
curlCodeToCode CurlETftpNosuchuser = 74
curlCodeToCode CurlEConvFailed = 75
curlCodeToCode CurlEConvReqd = 76
curlCodeToCode CurlESslCacertBadfile = 77
curlCodeToCode CurlERemoteFileNotFound = 78
curlCodeToCode CurlESsh = 79
curlCodeToCode CurlESslShutdownFailed = 80
curlCodeToCode CurlEAgain = 81
curlCodeToCode CurlESslCrlBadfile = 82
curlCodeToCode CurlESslIssuerError = 83
curlCodeToCode CurlEFtpPretFailed = 84
curlCodeToCode CurlERtspCseqError = 85
curlCodeToCode CurlERtspSessionError = 86
curlCodeToCode CurlEFtpBadFileList = 87
curlCodeToCode CurlEChunkFailed = 88
curlCodeToCode CurlENoConnectionAvailable = 89
curlCodeToCode CurlESslPinnedpubkeynotmatch = 90
curlCodeToCode CurlESslInvalidcertstatus = 91
curlCodeToCode CurlEHttp2Stream = 92
curlCodeToCode CurlERecursiveApiCall = 93
curlCodeToCode CurlEAuthError = 94
curlCodeToCode CurlEHttp3 = 95
curlCodeToCode CurlEQuicConnectError = 96
curlCodeToCode CurlEUnknown = -1

public export
FromCode CurlCode where
  fromCode = curlCodeFromCode

public export
ToCode CurlCode where
  toCode = curlCodeToCode

public export
Show CurlCode where
  show = ("CurlCode=" ++) . show . toCode

public export
data CurlOpt
    = CurlOptWritedata
    | CurlOptUrl
    | CurlOptPort
    | CurlOptProxy
    | CurlOptUserpwd
    | CurlOptProxyuserpwd
    | CurlOptRange
    | CurlOptReaddata
    | CurlOptErrorbuffer
    | CurlOptWritefunction
    | CurlOptReadfunction
    | CurlOptTimeout
    | CurlOptInfilesize
    | CurlOptPostfields
    | CurlOptReferer
    | CurlOptFtpport
    | CurlOptUseragent
    | CurlOptLowSpeedLimit
    | CurlOptLowSpeedTime
    | CurlOptResumeFrom
    | CurlOptCookie
    | CurlOptHttpheader
    | CurlOptHttppost
    | CurlOptSslcert
    | CurlOptKeypasswd
    | CurlOptCrlf
    | CurlOptQuote
    | CurlOptHeaderdata
    | CurlOptCookiefile
    | CurlOptSslversion
    | CurlOptTimecondition
    | CurlOptTimevalue
    | CurlOptCustomrequest
    | CurlOptStderr
    | CurlOptPostquote
    | CurlOptObsolete40
    | CurlOptVerbose
    | CurlOptHeader
    | CurlOptNoprogress
    | CurlOptNobody
    | CurlOptFailonerror
    | CurlOptUpload
    | CurlOptPost
    | CurlOptDirlistonly
    | CurlOptAppend
    | CurlOptNetrc
    | CurlOptFollowlocation
    | CurlOptTransfertext
    | CurlOptPut
    | CurlOptProgressfunction
    | CurlOptProgressdata
    | CurlOptAutoreferer
    | CurlOptProxyport
    | CurlOptPostfieldsize
    | CurlOptHttpproxytunnel
    | CurlOptInterface
    | CurlOptKrblevel
    | CurlOptSslVerifypeer
    | CurlOptCainfo
    | CurlOptMaxredirs
    | CurlOptFiletime
    | CurlOptTelnetoptions
    | CurlOptMaxconnects
    | CurlOptObsolete72
    | CurlOptFreshConnect
    | CurlOptForbidReuse
    | CurlOptRandomFile
    | CurlOptEgdsocket
    | CurlOptConnecttimeout
    | CurlOptHeaderfunction
    | CurlOptHttpget
    | CurlOptSslVerifyhost
    | CurlOptCookiejar
    | CurlOptSslCipherList
    | CurlOptHttpVersion
    | CurlOptFtpUseEpsv
    | CurlOptSslcerttype
    | CurlOptSslkey
    | CurlOptSslkeytype
    | CurlOptSslengine
    | CurlOptSslengineDefault
    | CurlOptDnsUseGlobalCache
    | CurlOptDnsCacheTimeout
    | CurlOptPrequote
    | CurlOptDebugfunction
    | CurlOptDebugdata
    | CurlOptCookiesession
    | CurlOptCapath
    | CurlOptBuffersize
    | CurlOptNosignal
    | CurlOptShare
    | CurlOptProxytype
    | CurlOptAcceptEncoding
    | CurlOptPrivate
    | CurlOptHttp200aliases
    | CurlOptUnrestrictedAuth
    | CurlOptFtpUseEprt
    | CurlOptHttpauth
    | CurlOptSslCtxFunction
    | CurlOptSslCtxData
    | CurlOptFtpCreateMissingDirs
    | CurlOptProxyauth
    | CurlOptFtpResponseTimeout
    | CurlOptIpresolve
    | CurlOptMaxfilesize
    | CurlOptInfilesizeLarge
    | CurlOptResumeFromLarge
    | CurlOptMaxfilesizeLarge
    | CurlOptNetrcFile
    | CurlOptUseSsl
    | CurlOptPostfieldsizeLarge
    | CurlOptTcpNodelay
    | CurlOptFtpsslauth
    | CurlOptIoctlfunction
    | CurlOptIoctldata
    | CurlOptFtpAccount
    | CurlOptCookielist
    | CurlOptIgnoreContentLength
    | CurlOptFtpSkipPasvIp
    | CurlOptFtpFilemethod
    | CurlOptLocalport
    | CurlOptLocalportrange
    | CurlOptConnectOnly
    | CurlOptConvFromNetworkFunction
    | CurlOptConvToNetworkFunction
    | CurlOptConvFromUtf8Function
    | CurlOptMaxSendSpeedLarge
    | CurlOptMaxRecvSpeedLarge
    | CurlOptFtpAlternativeToUser
    | CurlOptSockoptfunction
    | CurlOptSockoptdata
    | CurlOptSslSessionidCache
    | CurlOptSshAuthTypes
    | CurlOptSshPublicKeyfile
    | CurlOptSshPrivateKeyfile
    | CurlOptFtpSslCcc
    | CurlOptTimeoutMs
    | CurlOptConnecttimeoutMs
    | CurlOptHttpTransferDecoding
    | CurlOptHttpContentDecoding
    | CurlOptNewFilePerms
    | CurlOptNewDirectoryPerms
    | CurlOptPostredir
    | CurlOptSshHostPublicKeyMd5
    | CurlOptOpensocketfunction
    | CurlOptOpensocketdata
    | CurlOptCopypostfields
    | CurlOptProxyTransferMode
    | CurlOptSeekfunction
    | CurlOptSeekdata
    | CurlOptCrlfile
    | CurlOptIssuercert
    | CurlOptAddressScope
    | CurlOptCertinfo
    | CurlOptUsername
    | CurlOptPassword
    | CurlOptProxyusername
    | CurlOptProxypassword
    | CurlOptNoproxy
    | CurlOptTftpBlksize
    | CurlOptSocks5GssapiService
    | CurlOptSocks5GssapiNec
    | CurlOptProtocols
    | CurlOptRedirProtocols
    | CurlOptSshKnownhosts
    | CurlOptSshKeyfunction
    | CurlOptSshKeydata
    | CurlOptMailFrom
    | CurlOptMailRcpt
    | CurlOptFtpUsePret
    | CurlOptRtspRequest
    | CurlOptRtspSessionId
    | CurlOptRtspStreamUri
    | CurlOptRtspTransport
    | CurlOptRtspClientCseq
    | CurlOptRtspServerCseq
    | CurlOptInterleavedata
    | CurlOptInterleavefunction
    | CurlOptWildcardmatch
    | CurlOptChunkBgnFunction
    | CurlOptChunkEndFunction
    | CurlOptFnmatchFunction
    | CurlOptChunkData
    | CurlOptFnmatchData
    | CurlOptResolve
    | CurlOptTlsauthUsername
    | CurlOptTlsauthPassword
    | CurlOptTlsauthType
    | CurlOptTransferEncoding
    | CurlOptClosesocketfunction
    | CurlOptClosesocketdata
    | CurlOptGssapiDelegation
    | CurlOptDnsServers
    | CurlOptAccepttimeoutMs
    | CurlOptTcpKeepalive
    | CurlOptTcpKeepidle
    | CurlOptTcpKeepintvl
    | CurlOptSslOptions
    | CurlOptMailAuth
    | CurlOptSaslIr
    | CurlOptXferinfofunction
    | CurlOptXoauth2Bearer
    | CurlOptDnsInterface
    | CurlOptDnsLocalIp4
    | CurlOptDnsLocalIp6
    | CurlOptLoginOptions
    | CurlOptSslEnableNpn
    | CurlOptSslEnableAlpn
    | CurlOptExpect100TimeoutMs
    | CurlOptProxyheader
    | CurlOptHeaderopt
    | CurlOptPinnedpublickey
    | CurlOptUnixSocketPath
    | CurlOptSslVerifystatus
    | CurlOptSslFalsestart
    | CurlOptPathAsIs
    | CurlOptProxyServiceName
    | CurlOptServiceName
    | CurlOptPipewait
    | CurlOptDefaultProtocol
    | CurlOptStreamWeight
    | CurlOptStreamDepends
    | CurlOptStreamDependsE
    | CurlOptTftpNoOptions
    | CurlOptConnectTo
    | CurlOptTcpFastopen
    | CurlOptKeepSendingOnError
    | CurlOptProxyCainfo
    | CurlOptProxyCapath
    | CurlOptProxySslVerifypeer
    | CurlOptProxySslVerifyhost
    | CurlOptProxySslversion
    | CurlOptProxyTlsauthUsername
    | CurlOptProxyTlsauthPassword
    | CurlOptProxyTlsauthType
    | CurlOptProxySslcert
    | CurlOptProxySslcerttype
    | CurlOptProxySslkey
    | CurlOptProxySslkeytype
    | CurlOptProxyKeypasswd
    | CurlOptProxySslCipherList
    | CurlOptProxyCrlfile
    | CurlOptProxySslOptions
    | CurlOptPreProxy
    | CurlOptProxyPinnedpublickey
    | CurlOptAbstractUnixSocket
    | CurlOptSuppressConnectHeaders
    | CurlOptRequestTarget
    | CurlOptSocks5Auth
    | CurlOptSshCompression
    | CurlOptMimepost
    | CurlOptTimevalueLarge
    | CurlOptHappyEyeballsTimeoutMs
    | CurlOptResolverStartFunction
    | CurlOptResolverStartData
    | CurlOptHaproxyprotocol
    | CurlOptDnsShuffleAddresses
    | CurlOptTls13Ciphers
    | CurlOptProxyTls13Ciphers
    | CurlOptDisallowUsernameInUrl
    | CurlOptDohUrl
    | CurlOptUploadBuffersize
    | CurlOptUpkeepIntervalMs
    | CurlOptCurlu
    | CurlOptTrailerfunction
    | CurlOptTrailerdata
    | CurlOptHttp09Allowed
    | CurlOptAltsvcCtrl
    | CurlOptAltsvc
    | CurlOptMaxageConn
    | CurlOptSaslAuthzid
    | CurlOptMailRcptAlllowfails
    | CurlOptSslcertBlob
    | CurlOptSslkeyBlob
    | CurlOptProxySslcertBlob
    | CurlOptProxySslkeyBlob
    | CurlOptIssuercertBlob
    | CurlOptProxyIssuercert
    | CurlOptProxyIssuercertBlob

-- Raw codes that do not have the type-correction
-- Depending on the option type, a constant needs
-- to be added to the option code
private
curlOptCodeRaw : CurlOpt -> Int
curlOptCodeRaw CurlOptWritedata = 1
curlOptCodeRaw CurlOptUrl = 2
curlOptCodeRaw CurlOptPort = 3
curlOptCodeRaw CurlOptProxy = 4
curlOptCodeRaw CurlOptUserpwd = 5
curlOptCodeRaw CurlOptProxyuserpwd = 6
curlOptCodeRaw CurlOptRange = 7
curlOptCodeRaw CurlOptReaddata = 9
curlOptCodeRaw CurlOptErrorbuffer = 10
curlOptCodeRaw CurlOptWritefunction = 11
curlOptCodeRaw CurlOptReadfunction = 12
curlOptCodeRaw CurlOptTimeout = 13
curlOptCodeRaw CurlOptInfilesize = 14
curlOptCodeRaw CurlOptPostfields = 15
curlOptCodeRaw CurlOptReferer = 16
curlOptCodeRaw CurlOptFtpport = 17
curlOptCodeRaw CurlOptUseragent = 18
curlOptCodeRaw CurlOptLowSpeedLimit = 19
curlOptCodeRaw CurlOptLowSpeedTime = 20
curlOptCodeRaw CurlOptResumeFrom = 21
curlOptCodeRaw CurlOptCookie = 22
curlOptCodeRaw CurlOptHttpheader = 23
curlOptCodeRaw CurlOptHttppost = 24
curlOptCodeRaw CurlOptSslcert = 25
curlOptCodeRaw CurlOptKeypasswd = 26
curlOptCodeRaw CurlOptCrlf = 27
curlOptCodeRaw CurlOptQuote = 28
curlOptCodeRaw CurlOptHeaderdata = 29
curlOptCodeRaw CurlOptCookiefile = 31
curlOptCodeRaw CurlOptSslversion = 32
curlOptCodeRaw CurlOptTimecondition = 33
curlOptCodeRaw CurlOptTimevalue = 34
curlOptCodeRaw CurlOptCustomrequest = 36
curlOptCodeRaw CurlOptStderr = 37
curlOptCodeRaw CurlOptPostquote = 39
curlOptCodeRaw CurlOptObsolete40 = 40
curlOptCodeRaw CurlOptVerbose = 41
curlOptCodeRaw CurlOptHeader = 42
curlOptCodeRaw CurlOptNoprogress = 43
curlOptCodeRaw CurlOptNobody = 44
curlOptCodeRaw CurlOptFailonerror = 45
curlOptCodeRaw CurlOptUpload = 46
curlOptCodeRaw CurlOptPost = 47
curlOptCodeRaw CurlOptDirlistonly = 48
curlOptCodeRaw CurlOptAppend = 50
curlOptCodeRaw CurlOptNetrc = 51
curlOptCodeRaw CurlOptFollowlocation = 52
curlOptCodeRaw CurlOptTransfertext = 53
curlOptCodeRaw CurlOptPut = 54
curlOptCodeRaw CurlOptProgressfunction = 56
curlOptCodeRaw CurlOptProgressdata = 57
curlOptCodeRaw CurlOptAutoreferer = 58
curlOptCodeRaw CurlOptProxyport = 59
curlOptCodeRaw CurlOptPostfieldsize = 60
curlOptCodeRaw CurlOptHttpproxytunnel = 61
curlOptCodeRaw CurlOptInterface = 62
curlOptCodeRaw CurlOptKrblevel = 63
curlOptCodeRaw CurlOptSslVerifypeer = 64
curlOptCodeRaw CurlOptCainfo = 65
curlOptCodeRaw CurlOptMaxredirs = 68
curlOptCodeRaw CurlOptFiletime = 69
curlOptCodeRaw CurlOptTelnetoptions = 70
curlOptCodeRaw CurlOptMaxconnects = 71
curlOptCodeRaw CurlOptObsolete72 = 72
curlOptCodeRaw CurlOptFreshConnect = 74
curlOptCodeRaw CurlOptForbidReuse = 75
curlOptCodeRaw CurlOptRandomFile = 76
curlOptCodeRaw CurlOptEgdsocket = 77
curlOptCodeRaw CurlOptConnecttimeout = 78
curlOptCodeRaw CurlOptHeaderfunction = 79
curlOptCodeRaw CurlOptHttpget = 80
curlOptCodeRaw CurlOptSslVerifyhost = 81
curlOptCodeRaw CurlOptCookiejar = 82
curlOptCodeRaw CurlOptSslCipherList = 83
curlOptCodeRaw CurlOptHttpVersion = 84
curlOptCodeRaw CurlOptFtpUseEpsv = 85
curlOptCodeRaw CurlOptSslcerttype = 86
curlOptCodeRaw CurlOptSslkey = 87
curlOptCodeRaw CurlOptSslkeytype = 88
curlOptCodeRaw CurlOptSslengine = 89
curlOptCodeRaw CurlOptSslengineDefault = 90
curlOptCodeRaw CurlOptDnsUseGlobalCache = 91
curlOptCodeRaw CurlOptDnsCacheTimeout = 92
curlOptCodeRaw CurlOptPrequote = 93
curlOptCodeRaw CurlOptDebugfunction = 94
curlOptCodeRaw CurlOptDebugdata = 95
curlOptCodeRaw CurlOptCookiesession = 96
curlOptCodeRaw CurlOptCapath = 97
curlOptCodeRaw CurlOptBuffersize = 98
curlOptCodeRaw CurlOptNosignal = 99
curlOptCodeRaw CurlOptShare = 100
curlOptCodeRaw CurlOptProxytype = 101
curlOptCodeRaw CurlOptAcceptEncoding = 102
curlOptCodeRaw CurlOptPrivate = 103
curlOptCodeRaw CurlOptHttp200aliases = 104
curlOptCodeRaw CurlOptUnrestrictedAuth = 105
curlOptCodeRaw CurlOptFtpUseEprt = 106
curlOptCodeRaw CurlOptHttpauth = 107
curlOptCodeRaw CurlOptSslCtxFunction = 108
curlOptCodeRaw CurlOptSslCtxData = 109
curlOptCodeRaw CurlOptFtpCreateMissingDirs = 110
curlOptCodeRaw CurlOptProxyauth = 111
curlOptCodeRaw CurlOptFtpResponseTimeout = 112
curlOptCodeRaw CurlOptIpresolve = 113
curlOptCodeRaw CurlOptMaxfilesize = 114
curlOptCodeRaw CurlOptInfilesizeLarge = 115
curlOptCodeRaw CurlOptResumeFromLarge = 116
curlOptCodeRaw CurlOptMaxfilesizeLarge = 117
curlOptCodeRaw CurlOptNetrcFile = 118
curlOptCodeRaw CurlOptUseSsl = 119
curlOptCodeRaw CurlOptPostfieldsizeLarge = 120
curlOptCodeRaw CurlOptTcpNodelay = 121
curlOptCodeRaw CurlOptFtpsslauth = 129
curlOptCodeRaw CurlOptIoctlfunction = 130
curlOptCodeRaw CurlOptIoctldata = 131
curlOptCodeRaw CurlOptFtpAccount = 134
curlOptCodeRaw CurlOptCookielist = 135
curlOptCodeRaw CurlOptIgnoreContentLength = 136
curlOptCodeRaw CurlOptFtpSkipPasvIp = 137
curlOptCodeRaw CurlOptFtpFilemethod = 138
curlOptCodeRaw CurlOptLocalport = 139
curlOptCodeRaw CurlOptLocalportrange = 140
curlOptCodeRaw CurlOptConnectOnly = 141
curlOptCodeRaw CurlOptConvFromNetworkFunction = 142
curlOptCodeRaw CurlOptConvToNetworkFunction = 143
curlOptCodeRaw CurlOptConvFromUtf8Function = 144
curlOptCodeRaw CurlOptMaxSendSpeedLarge = 145
curlOptCodeRaw CurlOptMaxRecvSpeedLarge = 146
curlOptCodeRaw CurlOptFtpAlternativeToUser = 147
curlOptCodeRaw CurlOptSockoptfunction = 148
curlOptCodeRaw CurlOptSockoptdata = 149
curlOptCodeRaw CurlOptSslSessionidCache = 150
curlOptCodeRaw CurlOptSshAuthTypes = 151
curlOptCodeRaw CurlOptSshPublicKeyfile = 152
curlOptCodeRaw CurlOptSshPrivateKeyfile = 153
curlOptCodeRaw CurlOptFtpSslCcc = 154
curlOptCodeRaw CurlOptTimeoutMs = 155
curlOptCodeRaw CurlOptConnecttimeoutMs = 156
curlOptCodeRaw CurlOptHttpTransferDecoding = 157
curlOptCodeRaw CurlOptHttpContentDecoding = 158
curlOptCodeRaw CurlOptNewFilePerms = 159
curlOptCodeRaw CurlOptNewDirectoryPerms = 160
curlOptCodeRaw CurlOptPostredir = 161
curlOptCodeRaw CurlOptSshHostPublicKeyMd5 = 162
curlOptCodeRaw CurlOptOpensocketfunction = 163
curlOptCodeRaw CurlOptOpensocketdata = 164
curlOptCodeRaw CurlOptCopypostfields = 165
curlOptCodeRaw CurlOptProxyTransferMode = 166
curlOptCodeRaw CurlOptSeekfunction = 167
curlOptCodeRaw CurlOptSeekdata = 168
curlOptCodeRaw CurlOptCrlfile = 169
curlOptCodeRaw CurlOptIssuercert = 170
curlOptCodeRaw CurlOptAddressScope = 171
curlOptCodeRaw CurlOptCertinfo = 172
curlOptCodeRaw CurlOptUsername = 173
curlOptCodeRaw CurlOptPassword = 174
curlOptCodeRaw CurlOptProxyusername = 175
curlOptCodeRaw CurlOptProxypassword = 176
curlOptCodeRaw CurlOptNoproxy = 177
curlOptCodeRaw CurlOptTftpBlksize = 178
curlOptCodeRaw CurlOptSocks5GssapiService = 179
curlOptCodeRaw CurlOptSocks5GssapiNec = 180
curlOptCodeRaw CurlOptProtocols = 181
curlOptCodeRaw CurlOptRedirProtocols = 182
curlOptCodeRaw CurlOptSshKnownhosts = 183
curlOptCodeRaw CurlOptSshKeyfunction = 184
curlOptCodeRaw CurlOptSshKeydata = 185
curlOptCodeRaw CurlOptMailFrom = 186
curlOptCodeRaw CurlOptMailRcpt = 187
curlOptCodeRaw CurlOptFtpUsePret = 188
curlOptCodeRaw CurlOptRtspRequest = 189
curlOptCodeRaw CurlOptRtspSessionId = 190
curlOptCodeRaw CurlOptRtspStreamUri = 191
curlOptCodeRaw CurlOptRtspTransport = 192
curlOptCodeRaw CurlOptRtspClientCseq = 193
curlOptCodeRaw CurlOptRtspServerCseq = 194
curlOptCodeRaw CurlOptInterleavedata = 195
curlOptCodeRaw CurlOptInterleavefunction = 196
curlOptCodeRaw CurlOptWildcardmatch = 197
curlOptCodeRaw CurlOptChunkBgnFunction = 198
curlOptCodeRaw CurlOptChunkEndFunction = 199
curlOptCodeRaw CurlOptFnmatchFunction = 200
curlOptCodeRaw CurlOptChunkData = 201
curlOptCodeRaw CurlOptFnmatchData = 202
curlOptCodeRaw CurlOptResolve = 203
curlOptCodeRaw CurlOptTlsauthUsername = 204
curlOptCodeRaw CurlOptTlsauthPassword = 205
curlOptCodeRaw CurlOptTlsauthType = 206
curlOptCodeRaw CurlOptTransferEncoding = 207
curlOptCodeRaw CurlOptClosesocketfunction = 208
curlOptCodeRaw CurlOptClosesocketdata = 209
curlOptCodeRaw CurlOptGssapiDelegation = 210
curlOptCodeRaw CurlOptDnsServers = 211
curlOptCodeRaw CurlOptAccepttimeoutMs = 212
curlOptCodeRaw CurlOptTcpKeepalive = 213
curlOptCodeRaw CurlOptTcpKeepidle = 214
curlOptCodeRaw CurlOptTcpKeepintvl = 215
curlOptCodeRaw CurlOptSslOptions = 216
curlOptCodeRaw CurlOptMailAuth = 217
curlOptCodeRaw CurlOptSaslIr = 218
curlOptCodeRaw CurlOptXferinfofunction = 219
curlOptCodeRaw CurlOptXoauth2Bearer = 220
curlOptCodeRaw CurlOptDnsInterface = 221
curlOptCodeRaw CurlOptDnsLocalIp4 = 222
curlOptCodeRaw CurlOptDnsLocalIp6 = 223
curlOptCodeRaw CurlOptLoginOptions = 224
curlOptCodeRaw CurlOptSslEnableNpn = 225
curlOptCodeRaw CurlOptSslEnableAlpn = 226
curlOptCodeRaw CurlOptExpect100TimeoutMs = 227
curlOptCodeRaw CurlOptProxyheader = 228
curlOptCodeRaw CurlOptHeaderopt = 229
curlOptCodeRaw CurlOptPinnedpublickey = 230
curlOptCodeRaw CurlOptUnixSocketPath = 231
curlOptCodeRaw CurlOptSslVerifystatus = 232
curlOptCodeRaw CurlOptSslFalsestart = 233
curlOptCodeRaw CurlOptPathAsIs = 234
curlOptCodeRaw CurlOptProxyServiceName = 235
curlOptCodeRaw CurlOptServiceName = 236
curlOptCodeRaw CurlOptPipewait = 237
curlOptCodeRaw CurlOptDefaultProtocol = 238
curlOptCodeRaw CurlOptStreamWeight = 239
curlOptCodeRaw CurlOptStreamDepends = 240
curlOptCodeRaw CurlOptStreamDependsE = 241
curlOptCodeRaw CurlOptTftpNoOptions = 242
curlOptCodeRaw CurlOptConnectTo = 243
curlOptCodeRaw CurlOptTcpFastopen = 244
curlOptCodeRaw CurlOptKeepSendingOnError = 245
curlOptCodeRaw CurlOptProxyCainfo = 246
curlOptCodeRaw CurlOptProxyCapath = 247
curlOptCodeRaw CurlOptProxySslVerifypeer = 248
curlOptCodeRaw CurlOptProxySslVerifyhost = 249
curlOptCodeRaw CurlOptProxySslversion = 250
curlOptCodeRaw CurlOptProxyTlsauthUsername = 251
curlOptCodeRaw CurlOptProxyTlsauthPassword = 252
curlOptCodeRaw CurlOptProxyTlsauthType = 253
curlOptCodeRaw CurlOptProxySslcert = 254
curlOptCodeRaw CurlOptProxySslcerttype = 255
curlOptCodeRaw CurlOptProxySslkey = 256
curlOptCodeRaw CurlOptProxySslkeytype = 257
curlOptCodeRaw CurlOptProxyKeypasswd = 258
curlOptCodeRaw CurlOptProxySslCipherList = 259
curlOptCodeRaw CurlOptProxyCrlfile = 260
curlOptCodeRaw CurlOptProxySslOptions = 261
curlOptCodeRaw CurlOptPreProxy = 262
curlOptCodeRaw CurlOptProxyPinnedpublickey = 263
curlOptCodeRaw CurlOptAbstractUnixSocket = 264
curlOptCodeRaw CurlOptSuppressConnectHeaders = 265
curlOptCodeRaw CurlOptRequestTarget = 266
curlOptCodeRaw CurlOptSocks5Auth = 267
curlOptCodeRaw CurlOptSshCompression = 268
curlOptCodeRaw CurlOptMimepost = 269
curlOptCodeRaw CurlOptTimevalueLarge = 270
curlOptCodeRaw CurlOptHappyEyeballsTimeoutMs = 271
curlOptCodeRaw CurlOptResolverStartFunction = 272
curlOptCodeRaw CurlOptResolverStartData = 273
curlOptCodeRaw CurlOptHaproxyprotocol = 274
curlOptCodeRaw CurlOptDnsShuffleAddresses = 275
curlOptCodeRaw CurlOptTls13Ciphers = 276
curlOptCodeRaw CurlOptProxyTls13Ciphers = 277
curlOptCodeRaw CurlOptDisallowUsernameInUrl = 278
curlOptCodeRaw CurlOptDohUrl = 279
curlOptCodeRaw CurlOptUploadBuffersize = 280
curlOptCodeRaw CurlOptUpkeepIntervalMs = 281
curlOptCodeRaw CurlOptCurlu = 282
curlOptCodeRaw CurlOptTrailerfunction = 283
curlOptCodeRaw CurlOptTrailerdata = 284
curlOptCodeRaw CurlOptHttp09Allowed = 285
curlOptCodeRaw CurlOptAltsvcCtrl = 286
curlOptCodeRaw CurlOptAltsvc = 287
curlOptCodeRaw CurlOptMaxageConn = 288
curlOptCodeRaw CurlOptSaslAuthzid = 289
curlOptCodeRaw CurlOptMailRcptAlllowfails = 290
curlOptCodeRaw CurlOptSslcertBlob = 291
curlOptCodeRaw CurlOptSslkeyBlob = 292
curlOptCodeRaw CurlOptProxySslcertBlob = 293
curlOptCodeRaw CurlOptProxySslkeyBlob = 294
curlOptCodeRaw CurlOptIssuercertBlob = 295
curlOptCodeRaw CurlOptProxyIssuercert = 296
curlOptCodeRaw CurlOptProxyIssuercertBlob = 297


||| libcurl type used in curl_easy_setopt
public export
data CurlOptType
    = CurlOptTypeObjectpoint
    | CurlOptTypeStringpoint
    | CurlOptTypeLong
    | CurlOptTypeSlistpoint
    | CurlOptTypeBlob
    | CurlOptTypeFunctionpoint
    | CurlOptTypeOffT

|||
public export
Eq CurlOptType where
  CurlOptTypeObjectpoint == CurlOptTypeObjectpoint = True
  CurlOptTypeStringpoint == CurlOptTypeStringpoint = True
  CurlOptTypeLong == CurlOptTypeLong = True
  CurlOptTypeSlistpoint == CurlOptTypeSlistpoint = True
  CurlOptTypeBlob == CurlOptTypeBlob = True
  CurlOptTypeFunctionpoint == CurlOptTypeFunctionpoint = True
  CurlOptTypeOffT == CurlOptTypeOffT = True
  _ == _ = False

||| parameter type to use with curl_easy_setopt for a given CurlOpt
public export
curlOptType : CurlOpt -> CurlOptType
curlOptType CurlOptWritedata = CurlOptTypeObjectpoint
curlOptType CurlOptUrl = CurlOptTypeStringpoint
curlOptType CurlOptPort = CurlOptTypeLong
curlOptType CurlOptProxy = CurlOptTypeStringpoint
curlOptType CurlOptUserpwd = CurlOptTypeStringpoint
curlOptType CurlOptProxyuserpwd = CurlOptTypeStringpoint
curlOptType CurlOptRange = CurlOptTypeStringpoint
curlOptType CurlOptReaddata = CurlOptTypeObjectpoint
curlOptType CurlOptErrorbuffer = CurlOptTypeObjectpoint
curlOptType CurlOptWritefunction = CurlOptTypeFunctionpoint
curlOptType CurlOptReadfunction = CurlOptTypeFunctionpoint
curlOptType CurlOptTimeout = CurlOptTypeLong
curlOptType CurlOptInfilesize = CurlOptTypeLong
curlOptType CurlOptPostfields = CurlOptTypeObjectpoint
curlOptType CurlOptReferer = CurlOptTypeStringpoint
curlOptType CurlOptFtpport = CurlOptTypeStringpoint
curlOptType CurlOptUseragent = CurlOptTypeStringpoint
curlOptType CurlOptLowSpeedLimit = CurlOptTypeLong
curlOptType CurlOptLowSpeedTime = CurlOptTypeLong
curlOptType CurlOptResumeFrom = CurlOptTypeLong
curlOptType CurlOptCookie = CurlOptTypeStringpoint
curlOptType CurlOptHttpheader = CurlOptTypeSlistpoint
curlOptType CurlOptHttppost = CurlOptTypeObjectpoint
curlOptType CurlOptSslcert = CurlOptTypeStringpoint
curlOptType CurlOptKeypasswd = CurlOptTypeStringpoint
curlOptType CurlOptCrlf = CurlOptTypeLong
curlOptType CurlOptQuote = CurlOptTypeSlistpoint
curlOptType CurlOptHeaderdata = CurlOptTypeObjectpoint
curlOptType CurlOptCookiefile = CurlOptTypeStringpoint
curlOptType CurlOptSslversion = CurlOptTypeLong
curlOptType CurlOptTimecondition = CurlOptTypeLong
curlOptType CurlOptTimevalue = CurlOptTypeLong
curlOptType CurlOptCustomrequest = CurlOptTypeStringpoint
curlOptType CurlOptStderr = CurlOptTypeObjectpoint
curlOptType CurlOptPostquote = CurlOptTypeSlistpoint
curlOptType CurlOptObsolete40 = CurlOptTypeObjectpoint
curlOptType CurlOptVerbose = CurlOptTypeLong
curlOptType CurlOptHeader = CurlOptTypeLong
curlOptType CurlOptNoprogress = CurlOptTypeLong
curlOptType CurlOptNobody = CurlOptTypeLong
curlOptType CurlOptFailonerror = CurlOptTypeLong
curlOptType CurlOptUpload = CurlOptTypeLong
curlOptType CurlOptPost = CurlOptTypeLong
curlOptType CurlOptDirlistonly = CurlOptTypeLong
curlOptType CurlOptAppend = CurlOptTypeLong
curlOptType CurlOptNetrc = CurlOptTypeLong
curlOptType CurlOptFollowlocation = CurlOptTypeLong
curlOptType CurlOptTransfertext = CurlOptTypeLong
curlOptType CurlOptPut = CurlOptTypeLong
curlOptType CurlOptProgressfunction = CurlOptTypeFunctionpoint
curlOptType CurlOptProgressdata = CurlOptTypeObjectpoint
curlOptType CurlOptAutoreferer = CurlOptTypeLong
curlOptType CurlOptProxyport = CurlOptTypeLong
curlOptType CurlOptPostfieldsize = CurlOptTypeLong
curlOptType CurlOptHttpproxytunnel = CurlOptTypeLong
curlOptType CurlOptInterface = CurlOptTypeStringpoint
curlOptType CurlOptKrblevel = CurlOptTypeStringpoint
curlOptType CurlOptSslVerifypeer = CurlOptTypeLong
curlOptType CurlOptCainfo = CurlOptTypeStringpoint
curlOptType CurlOptMaxredirs = CurlOptTypeLong
curlOptType CurlOptFiletime = CurlOptTypeLong
curlOptType CurlOptTelnetoptions = CurlOptTypeSlistpoint
curlOptType CurlOptMaxconnects = CurlOptTypeLong
curlOptType CurlOptObsolete72 = CurlOptTypeLong
curlOptType CurlOptFreshConnect = CurlOptTypeLong
curlOptType CurlOptForbidReuse = CurlOptTypeLong
curlOptType CurlOptRandomFile = CurlOptTypeStringpoint
curlOptType CurlOptEgdsocket = CurlOptTypeStringpoint
curlOptType CurlOptConnecttimeout = CurlOptTypeLong
curlOptType CurlOptHeaderfunction = CurlOptTypeFunctionpoint
curlOptType CurlOptHttpget = CurlOptTypeLong
curlOptType CurlOptSslVerifyhost = CurlOptTypeLong
curlOptType CurlOptCookiejar = CurlOptTypeStringpoint
curlOptType CurlOptSslCipherList = CurlOptTypeStringpoint
curlOptType CurlOptHttpVersion = CurlOptTypeLong
curlOptType CurlOptFtpUseEpsv = CurlOptTypeLong
curlOptType CurlOptSslcerttype = CurlOptTypeStringpoint
curlOptType CurlOptSslkey = CurlOptTypeStringpoint
curlOptType CurlOptSslkeytype = CurlOptTypeStringpoint
curlOptType CurlOptSslengine = CurlOptTypeStringpoint
curlOptType CurlOptSslengineDefault = CurlOptTypeLong
curlOptType CurlOptDnsUseGlobalCache = CurlOptTypeLong
curlOptType CurlOptDnsCacheTimeout = CurlOptTypeLong
curlOptType CurlOptPrequote = CurlOptTypeSlistpoint
curlOptType CurlOptDebugfunction = CurlOptTypeFunctionpoint
curlOptType CurlOptDebugdata = CurlOptTypeObjectpoint
curlOptType CurlOptCookiesession = CurlOptTypeLong
curlOptType CurlOptCapath = CurlOptTypeStringpoint
curlOptType CurlOptBuffersize = CurlOptTypeLong
curlOptType CurlOptNosignal = CurlOptTypeLong
curlOptType CurlOptShare = CurlOptTypeObjectpoint
curlOptType CurlOptProxytype = CurlOptTypeLong
curlOptType CurlOptAcceptEncoding = CurlOptTypeStringpoint
curlOptType CurlOptPrivate = CurlOptTypeObjectpoint
curlOptType CurlOptHttp200aliases = CurlOptTypeSlistpoint
curlOptType CurlOptUnrestrictedAuth = CurlOptTypeLong
curlOptType CurlOptFtpUseEprt = CurlOptTypeLong
curlOptType CurlOptHttpauth = CurlOptTypeLong
curlOptType CurlOptSslCtxFunction = CurlOptTypeFunctionpoint
curlOptType CurlOptSslCtxData = CurlOptTypeObjectpoint
curlOptType CurlOptFtpCreateMissingDirs = CurlOptTypeLong
curlOptType CurlOptProxyauth = CurlOptTypeLong
curlOptType CurlOptFtpResponseTimeout = CurlOptTypeLong
curlOptType CurlOptIpresolve = CurlOptTypeLong
curlOptType CurlOptMaxfilesize = CurlOptTypeLong
curlOptType CurlOptInfilesizeLarge = CurlOptTypeOffT
curlOptType CurlOptResumeFromLarge = CurlOptTypeOffT
curlOptType CurlOptMaxfilesizeLarge = CurlOptTypeOffT
curlOptType CurlOptNetrcFile = CurlOptTypeStringpoint
curlOptType CurlOptUseSsl = CurlOptTypeLong
curlOptType CurlOptPostfieldsizeLarge = CurlOptTypeOffT
curlOptType CurlOptTcpNodelay = CurlOptTypeLong
curlOptType CurlOptFtpsslauth = CurlOptTypeLong
curlOptType CurlOptIoctlfunction = CurlOptTypeFunctionpoint
curlOptType CurlOptIoctldata = CurlOptTypeObjectpoint
curlOptType CurlOptFtpAccount = CurlOptTypeStringpoint
curlOptType CurlOptCookielist = CurlOptTypeStringpoint
curlOptType CurlOptIgnoreContentLength = CurlOptTypeLong
curlOptType CurlOptFtpSkipPasvIp = CurlOptTypeLong
curlOptType CurlOptFtpFilemethod = CurlOptTypeLong
curlOptType CurlOptLocalport = CurlOptTypeLong
curlOptType CurlOptLocalportrange = CurlOptTypeLong
curlOptType CurlOptConnectOnly = CurlOptTypeLong
curlOptType CurlOptConvFromNetworkFunction = CurlOptTypeFunctionpoint
curlOptType CurlOptConvToNetworkFunction = CurlOptTypeFunctionpoint
curlOptType CurlOptConvFromUtf8Function = CurlOptTypeFunctionpoint
curlOptType CurlOptMaxSendSpeedLarge = CurlOptTypeOffT
curlOptType CurlOptMaxRecvSpeedLarge = CurlOptTypeOffT
curlOptType CurlOptFtpAlternativeToUser = CurlOptTypeStringpoint
curlOptType CurlOptSockoptfunction = CurlOptTypeFunctionpoint
curlOptType CurlOptSockoptdata = CurlOptTypeObjectpoint
curlOptType CurlOptSslSessionidCache = CurlOptTypeLong
curlOptType CurlOptSshAuthTypes = CurlOptTypeLong
curlOptType CurlOptSshPublicKeyfile = CurlOptTypeStringpoint
curlOptType CurlOptSshPrivateKeyfile = CurlOptTypeStringpoint
curlOptType CurlOptFtpSslCcc = CurlOptTypeLong
curlOptType CurlOptTimeoutMs = CurlOptTypeLong
curlOptType CurlOptConnecttimeoutMs = CurlOptTypeLong
curlOptType CurlOptHttpTransferDecoding = CurlOptTypeLong
curlOptType CurlOptHttpContentDecoding = CurlOptTypeLong
curlOptType CurlOptNewFilePerms = CurlOptTypeLong
curlOptType CurlOptNewDirectoryPerms = CurlOptTypeLong
curlOptType CurlOptPostredir = CurlOptTypeLong
curlOptType CurlOptSshHostPublicKeyMd5 = CurlOptTypeStringpoint
curlOptType CurlOptOpensocketfunction = CurlOptTypeFunctionpoint
curlOptType CurlOptOpensocketdata = CurlOptTypeObjectpoint
curlOptType CurlOptCopypostfields = CurlOptTypeObjectpoint
curlOptType CurlOptProxyTransferMode = CurlOptTypeLong
curlOptType CurlOptSeekfunction = CurlOptTypeFunctionpoint
curlOptType CurlOptSeekdata = CurlOptTypeObjectpoint
curlOptType CurlOptCrlfile = CurlOptTypeStringpoint
curlOptType CurlOptIssuercert = CurlOptTypeStringpoint
curlOptType CurlOptAddressScope = CurlOptTypeLong
curlOptType CurlOptCertinfo = CurlOptTypeLong
curlOptType CurlOptUsername = CurlOptTypeStringpoint
curlOptType CurlOptPassword = CurlOptTypeStringpoint
curlOptType CurlOptProxyusername = CurlOptTypeStringpoint
curlOptType CurlOptProxypassword = CurlOptTypeStringpoint
curlOptType CurlOptNoproxy = CurlOptTypeStringpoint
curlOptType CurlOptTftpBlksize = CurlOptTypeLong
curlOptType CurlOptSocks5GssapiService = CurlOptTypeStringpoint
curlOptType CurlOptSocks5GssapiNec = CurlOptTypeLong
curlOptType CurlOptProtocols = CurlOptTypeLong
curlOptType CurlOptRedirProtocols = CurlOptTypeLong
curlOptType CurlOptSshKnownhosts = CurlOptTypeStringpoint
curlOptType CurlOptSshKeyfunction = CurlOptTypeFunctionpoint
curlOptType CurlOptSshKeydata = CurlOptTypeObjectpoint
curlOptType CurlOptMailFrom = CurlOptTypeStringpoint
curlOptType CurlOptMailRcpt = CurlOptTypeSlistpoint
curlOptType CurlOptFtpUsePret = CurlOptTypeLong
curlOptType CurlOptRtspRequest = CurlOptTypeLong
curlOptType CurlOptRtspSessionId = CurlOptTypeStringpoint
curlOptType CurlOptRtspStreamUri = CurlOptTypeStringpoint
curlOptType CurlOptRtspTransport = CurlOptTypeStringpoint
curlOptType CurlOptRtspClientCseq = CurlOptTypeLong
curlOptType CurlOptRtspServerCseq = CurlOptTypeLong
curlOptType CurlOptInterleavedata = CurlOptTypeObjectpoint
curlOptType CurlOptInterleavefunction = CurlOptTypeFunctionpoint
curlOptType CurlOptWildcardmatch = CurlOptTypeLong
curlOptType CurlOptChunkBgnFunction = CurlOptTypeFunctionpoint
curlOptType CurlOptChunkEndFunction = CurlOptTypeFunctionpoint
curlOptType CurlOptFnmatchFunction = CurlOptTypeFunctionpoint
curlOptType CurlOptChunkData = CurlOptTypeObjectpoint
curlOptType CurlOptFnmatchData = CurlOptTypeObjectpoint
curlOptType CurlOptResolve = CurlOptTypeSlistpoint
curlOptType CurlOptTlsauthUsername = CurlOptTypeStringpoint
curlOptType CurlOptTlsauthPassword = CurlOptTypeStringpoint
curlOptType CurlOptTlsauthType = CurlOptTypeStringpoint
curlOptType CurlOptTransferEncoding = CurlOptTypeLong
curlOptType CurlOptClosesocketfunction = CurlOptTypeFunctionpoint
curlOptType CurlOptClosesocketdata = CurlOptTypeObjectpoint
curlOptType CurlOptGssapiDelegation = CurlOptTypeLong
curlOptType CurlOptDnsServers = CurlOptTypeStringpoint
curlOptType CurlOptAccepttimeoutMs = CurlOptTypeLong
curlOptType CurlOptTcpKeepalive = CurlOptTypeLong
curlOptType CurlOptTcpKeepidle = CurlOptTypeLong
curlOptType CurlOptTcpKeepintvl = CurlOptTypeLong
curlOptType CurlOptSslOptions = CurlOptTypeLong
curlOptType CurlOptMailAuth = CurlOptTypeStringpoint
curlOptType CurlOptSaslIr = CurlOptTypeLong
curlOptType CurlOptXferinfofunction = CurlOptTypeFunctionpoint
curlOptType CurlOptXoauth2Bearer = CurlOptTypeStringpoint
curlOptType CurlOptDnsInterface = CurlOptTypeStringpoint
curlOptType CurlOptDnsLocalIp4 = CurlOptTypeStringpoint
curlOptType CurlOptDnsLocalIp6 = CurlOptTypeStringpoint
curlOptType CurlOptLoginOptions = CurlOptTypeStringpoint
curlOptType CurlOptSslEnableNpn = CurlOptTypeLong
curlOptType CurlOptSslEnableAlpn = CurlOptTypeLong
curlOptType CurlOptExpect100TimeoutMs = CurlOptTypeLong
curlOptType CurlOptProxyheader = CurlOptTypeSlistpoint
curlOptType CurlOptHeaderopt = CurlOptTypeLong
curlOptType CurlOptPinnedpublickey = CurlOptTypeStringpoint
curlOptType CurlOptUnixSocketPath = CurlOptTypeStringpoint
curlOptType CurlOptSslVerifystatus = CurlOptTypeLong
curlOptType CurlOptSslFalsestart = CurlOptTypeLong
curlOptType CurlOptPathAsIs = CurlOptTypeLong
curlOptType CurlOptProxyServiceName = CurlOptTypeStringpoint
curlOptType CurlOptServiceName = CurlOptTypeStringpoint
curlOptType CurlOptPipewait = CurlOptTypeLong
curlOptType CurlOptDefaultProtocol = CurlOptTypeStringpoint
curlOptType CurlOptStreamWeight = CurlOptTypeLong
curlOptType CurlOptStreamDepends = CurlOptTypeObjectpoint
curlOptType CurlOptStreamDependsE = CurlOptTypeObjectpoint
curlOptType CurlOptTftpNoOptions = CurlOptTypeLong
curlOptType CurlOptConnectTo = CurlOptTypeSlistpoint
curlOptType CurlOptTcpFastopen = CurlOptTypeLong
curlOptType CurlOptKeepSendingOnError = CurlOptTypeLong
curlOptType CurlOptProxyCainfo = CurlOptTypeStringpoint
curlOptType CurlOptProxyCapath = CurlOptTypeStringpoint
curlOptType CurlOptProxySslVerifypeer = CurlOptTypeLong
curlOptType CurlOptProxySslVerifyhost = CurlOptTypeLong
curlOptType CurlOptProxySslversion = CurlOptTypeLong
curlOptType CurlOptProxyTlsauthUsername = CurlOptTypeStringpoint
curlOptType CurlOptProxyTlsauthPassword = CurlOptTypeStringpoint
curlOptType CurlOptProxyTlsauthType = CurlOptTypeStringpoint
curlOptType CurlOptProxySslcert = CurlOptTypeStringpoint
curlOptType CurlOptProxySslcerttype = CurlOptTypeStringpoint
curlOptType CurlOptProxySslkey = CurlOptTypeStringpoint
curlOptType CurlOptProxySslkeytype = CurlOptTypeStringpoint
curlOptType CurlOptProxyKeypasswd = CurlOptTypeStringpoint
curlOptType CurlOptProxySslCipherList = CurlOptTypeStringpoint
curlOptType CurlOptProxyCrlfile = CurlOptTypeStringpoint
curlOptType CurlOptProxySslOptions = CurlOptTypeLong
curlOptType CurlOptPreProxy = CurlOptTypeStringpoint
curlOptType CurlOptProxyPinnedpublickey = CurlOptTypeStringpoint
curlOptType CurlOptAbstractUnixSocket = CurlOptTypeStringpoint
curlOptType CurlOptSuppressConnectHeaders = CurlOptTypeLong
curlOptType CurlOptRequestTarget = CurlOptTypeStringpoint
curlOptType CurlOptSocks5Auth = CurlOptTypeLong
curlOptType CurlOptSshCompression = CurlOptTypeLong
curlOptType CurlOptMimepost = CurlOptTypeObjectpoint
curlOptType CurlOptTimevalueLarge = CurlOptTypeOffT
curlOptType CurlOptHappyEyeballsTimeoutMs = CurlOptTypeLong
curlOptType CurlOptResolverStartFunction = CurlOptTypeFunctionpoint
curlOptType CurlOptResolverStartData = CurlOptTypeObjectpoint
curlOptType CurlOptHaproxyprotocol = CurlOptTypeLong
curlOptType CurlOptDnsShuffleAddresses = CurlOptTypeLong
curlOptType CurlOptTls13Ciphers = CurlOptTypeStringpoint
curlOptType CurlOptProxyTls13Ciphers = CurlOptTypeStringpoint
curlOptType CurlOptDisallowUsernameInUrl = CurlOptTypeLong
curlOptType CurlOptDohUrl = CurlOptTypeStringpoint
curlOptType CurlOptUploadBuffersize = CurlOptTypeLong
curlOptType CurlOptUpkeepIntervalMs = CurlOptTypeLong
curlOptType CurlOptCurlu = CurlOptTypeObjectpoint
curlOptType CurlOptTrailerfunction = CurlOptTypeFunctionpoint
curlOptType CurlOptTrailerdata = CurlOptTypeObjectpoint
curlOptType CurlOptHttp09Allowed = CurlOptTypeLong
curlOptType CurlOptAltsvcCtrl = CurlOptTypeLong
curlOptType CurlOptAltsvc = CurlOptTypeStringpoint
curlOptType CurlOptMaxageConn = CurlOptTypeLong
curlOptType CurlOptSaslAuthzid = CurlOptTypeStringpoint
curlOptType CurlOptMailRcptAlllowfails = CurlOptTypeLong
curlOptType CurlOptSslcertBlob = CurlOptTypeBlob
curlOptType CurlOptSslkeyBlob = CurlOptTypeBlob
curlOptType CurlOptProxySslcertBlob = CurlOptTypeBlob
curlOptType CurlOptProxySslkeyBlob = CurlOptTypeBlob
curlOptType CurlOptIssuercertBlob = CurlOptTypeBlob
curlOptType CurlOptProxyIssuercert = CurlOptTypeStringpoint
curlOptType CurlOptProxyIssuercertBlob = CurlOptTypeBlob

{-
#define CURLOPTTYPE_STRINGPOINT  CURLOPTTYPE_OBJECTPOINT
#define CURLOPTTYPE_SLISTPOINT  CURLOPTTYPE_OBJECTPOINT
#define CURLOPTTYPE_LONG          0
#define CURLOPTTYPE_OBJECTPOINT   10000
#define CURLOPTTYPE_FUNCTIONPOINT 20000
#define CURLOPTTYPE_OFF_T         30000
#define CURLOPTTYPE_BLOB          40000
-}

private
curlOptTypeCodeConstant : CurlOptType -> Int
curlOptTypeCodeConstant CurlOptTypeObjectpoint = 10000
curlOptTypeCodeConstant CurlOptTypeStringpoint = 10000
curlOptTypeCodeConstant CurlOptTypeSlistpoint = 10000
curlOptTypeCodeConstant CurlOptTypeFunctionpoint = 20000
curlOptTypeCodeConstant CurlOptTypeOffT = 30000
curlOptTypeCodeConstant CurlOptTypeBlob = 40000
curlOptTypeCodeConstant _ = 0

public export
curlOptCode : CurlOpt -> Int
curlOptCode code = curlOptTypeCodeConstant (curlOptType code) + curlOptCodeRaw code

public export
ToCode CurlOpt where
  toCode = curlOptCode

