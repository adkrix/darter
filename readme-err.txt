DioException [bad response]: This exception was thrown because the response has a status code of 403 and RequestOptions.validateStatus was configured to throw for this status code.
The status code of 403 has the following meaning: "Client error - the request contains bad syntax or cannot be fulfilled"
Read more about status codes at https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
In order to resolve this exception you typically have either to verify and fix your request code or you have to fix the server code.

[ERROR:flutter/runtime/dart_vm_initializer.cc(40)] Unhandled Exception: type '() => Set<bool>' is not a subtype of type '(Object) => dynamic'
#0      _FutureListener.handleError (dart:async/future_impl.dart:244:23)
#1      Future._propagateToListeners.handleError (dart:async/future_impl.dart:960:47)
#2      Future._propagateToListeners (dart:async/future_impl.dart:981:13)
#3      Future._completeErrorObject (dart:async/future_impl.dart:738:5)
#4      Future._completeError (dart:async/future_impl.dart:742:5)
<asynchronous suspension>

