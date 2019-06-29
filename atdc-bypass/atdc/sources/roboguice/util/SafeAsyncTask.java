package roboguice.util;

import android.os.Handler;
import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

@Deprecated
public abstract class SafeAsyncTask<ResultT> implements Callable<ResultT> {
    protected static final Executor DEFAULT_EXECUTOR = Executors.newFixedThreadPool(25);
    public static final int DEFAULT_POOL_SIZE = 25;
    protected Executor executor;
    protected FutureTask<Void> future;
    protected Handler handler;

    public class SafeAsyncTaskAndroidCallable extends AndroidCallable<ResultT> {
        public ResultT doInBackground() throws Exception {
            return SafeAsyncTask.this.call();
        }

        public void onException(Exception exception) {
            SafeAsyncTask.this.onException(exception);
        }

        public void onFinally() {
            SafeAsyncTask.this.onFinally();
        }

        public void onPreCall() {
            try {
                SafeAsyncTask.this.onPreExecute();
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        public void onSuccess(ResultT resultT) {
            try {
                SafeAsyncTask.this.onSuccess(resultT);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void onFinally() throws RuntimeException {
    }

    /* Access modifiers changed, original: protected */
    public void onPreExecute() throws Exception {
    }

    /* Access modifiers changed, original: protected */
    public void onSuccess(ResultT resultT) throws Exception {
    }

    public SafeAsyncTask() {
        this.executor = DEFAULT_EXECUTOR;
    }

    public SafeAsyncTask(Handler handler) {
        this.handler = handler;
        this.executor = DEFAULT_EXECUTOR;
    }

    public SafeAsyncTask(Executor executor) {
        this.executor = executor;
    }

    public SafeAsyncTask(Handler handler, Executor executor) {
        this.handler = handler;
        this.executor = executor;
    }

    public FutureTask<Void> future() {
        this.future = new FutureTask(newTask(), null);
        return this.future;
    }

    public SafeAsyncTask<ResultT> executor(Executor executor) {
        this.executor = executor;
        return this;
    }

    public Executor executor() {
        return this.executor;
    }

    public SafeAsyncTask<ResultT> handler(Handler handler) {
        this.handler = handler;
        return this;
    }

    public Handler handler() {
        return this.handler;
    }

    public void execute() {
        execute(Ln.isDebugEnabled() ? Thread.currentThread().getStackTrace() : null);
    }

    /* Access modifiers changed, original: protected */
    public void execute(StackTraceElement[] stackTraceElementArr) {
        this.executor.execute(future());
    }

    public boolean cancel(boolean z) {
        if (this.future != null) {
            return this.future.cancel(z);
        }
        throw new UnsupportedOperationException("You cannot cancel this task before calling future()");
    }

    public boolean isCancelled() {
        return this.future == null ? false : this.future.isCancelled();
    }

    /* Access modifiers changed, original: protected */
    public void onInterrupted(Exception exception) {
        onException(exception);
    }

    /* Access modifiers changed, original: protected */
    public void onException(Exception exception) throws RuntimeException {
        onThrowable(exception);
    }

    /* Access modifiers changed, original: protected */
    public void onThrowable(Throwable th) throws RuntimeException {
        Log.e("roboguice", "Throwable caught during background processing", th);
    }

    /* Access modifiers changed, original: protected */
    public Runnable newTask() {
        return new SafeAsyncTaskAndroidCallable();
    }
}
