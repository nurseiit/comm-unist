package roboguice.util;

public abstract class AndroidCallable<ResultT> implements AndroidCallableI<ResultT>, Runnable {
    protected StackTraceElement[] creationLocation;

    public void onFinally() {
    }

    public void onPreCall() throws Exception {
    }

    public AndroidCallable() {
        this.creationLocation = Ln.isDebugEnabled() ? Thread.currentThread().getStackTrace() : null;
    }

    public void run() {
        new AndroidCallableWrapper(null, this, this.creationLocation).run();
    }
}
