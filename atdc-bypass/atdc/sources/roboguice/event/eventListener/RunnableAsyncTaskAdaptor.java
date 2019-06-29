package roboguice.event.eventListener;

import android.os.Handler;
import roboguice.util.SafeAsyncTask;

public class RunnableAsyncTaskAdaptor extends SafeAsyncTask<Void> {
    protected Runnable runnable;

    public RunnableAsyncTaskAdaptor(Runnable runnable) {
        this.runnable = runnable;
    }

    public RunnableAsyncTaskAdaptor(Handler handler, Runnable runnable) {
        super(handler);
        this.runnable = runnable;
    }

    public Void call() throws Exception {
        this.runnable.run();
        return null;
    }
}
