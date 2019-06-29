package com.google.inject.internal;

class Exceptions {

    static class UnhandledCheckedUserException extends RuntimeException {
        public UnhandledCheckedUserException(Throwable th) {
            super(th);
        }
    }

    Exceptions() {
    }

    public static RuntimeException rethrowCause(Throwable th) {
        if (th.getCause() != null) {
            th = th.getCause();
        }
        return rethrow(th);
    }

    public static RuntimeException rethrow(Throwable th) {
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        } else if (th instanceof Error) {
            throw ((Error) th);
        } else {
            throw new UnhandledCheckedUserException(th);
        }
    }
}
