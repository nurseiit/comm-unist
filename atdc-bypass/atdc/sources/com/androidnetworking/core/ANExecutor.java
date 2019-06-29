package com.androidnetworking.core;

import android.net.NetworkInfo;
import com.androidnetworking.common.Priority;
import com.androidnetworking.internal.InternalRunnable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class ANExecutor extends ThreadPoolExecutor {
    private static final int DEFAULT_THREAD_COUNT = 3;

    private static final class AndroidNetworkingFutureTask extends FutureTask<InternalRunnable> implements Comparable<AndroidNetworkingFutureTask> {
        private final InternalRunnable hunter;

        public AndroidNetworkingFutureTask(InternalRunnable internalRunnable) {
            super(internalRunnable, null);
            this.hunter = internalRunnable;
        }

        public int compareTo(AndroidNetworkingFutureTask androidNetworkingFutureTask) {
            Priority priority = this.hunter.getPriority();
            Priority priority2 = androidNetworkingFutureTask.hunter.getPriority();
            return priority == priority2 ? this.hunter.sequence - androidNetworkingFutureTask.hunter.sequence : priority2.ordinal() - priority.ordinal();
        }
    }

    ANExecutor(int i, ThreadFactory threadFactory) {
        super(i, i, 0, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), threadFactory);
    }

    /* Access modifiers changed, original: 0000 */
    public void adjustThreadCount(NetworkInfo networkInfo) {
        if (networkInfo == null || !networkInfo.isConnectedOrConnecting()) {
            setThreadCount(3);
            return;
        }
        int type = networkInfo.getType();
        if (!(type == 6 || type == 9)) {
            switch (type) {
                case 0:
                    int subtype = networkInfo.getSubtype();
                    switch (subtype) {
                        case 1:
                        case 2:
                            setThreadCount(1);
                            break;
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                            setThreadCount(2);
                            break;
                        default:
                            switch (subtype) {
                                case 12:
                                    break;
                                case 13:
                                case 14:
                                case 15:
                                    setThreadCount(3);
                                    break;
                                default:
                                    setThreadCount(3);
                                    break;
                            }
                            setThreadCount(2);
                            break;
                    }
                case 1:
                    break;
                default:
                    setThreadCount(3);
                    break;
            }
        }
        setThreadCount(4);
    }

    private void setThreadCount(int i) {
        setCorePoolSize(i);
        setMaximumPoolSize(i);
    }

    public Future<?> submit(Runnable runnable) {
        AndroidNetworkingFutureTask androidNetworkingFutureTask = new AndroidNetworkingFutureTask((InternalRunnable) runnable);
        execute(androidNetworkingFutureTask);
        return androidNetworkingFutureTask;
    }
}
