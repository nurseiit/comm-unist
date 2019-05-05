package com.androidnetworking.internal;

import com.androidnetworking.common.ANRequest;
import com.androidnetworking.common.Priority;
import com.androidnetworking.core.Core;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public class ANRequestQueue {
    private static ANRequestQueue sInstance;
    private final Set<ANRequest> mCurrentRequests = Collections.newSetFromMap(new ConcurrentHashMap());
    private AtomicInteger mSequenceGenerator = new AtomicInteger();

    public interface RequestFilter {
        boolean apply(ANRequest aNRequest);
    }

    public static void initialize() {
        getInstance();
    }

    public static ANRequestQueue getInstance() {
        if (sInstance == null) {
            synchronized (ANRequestQueue.class) {
                if (sInstance == null) {
                    sInstance = new ANRequestQueue();
                }
            }
        }
        return sInstance;
    }

    private void cancel(RequestFilter requestFilter, boolean z) {
        try {
            Iterator it = this.mCurrentRequests.iterator();
            while (it.hasNext()) {
                ANRequest aNRequest = (ANRequest) it.next();
                if (requestFilter.apply(aNRequest)) {
                    aNRequest.cancel(z);
                    if (aNRequest.isCanceled()) {
                        aNRequest.destroy();
                        it.remove();
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void cancelAll(boolean z) {
        try {
            Iterator it = this.mCurrentRequests.iterator();
            while (it.hasNext()) {
                ANRequest aNRequest = (ANRequest) it.next();
                aNRequest.cancel(z);
                if (aNRequest.isCanceled()) {
                    aNRequest.destroy();
                    it.remove();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void cancelRequestWithGivenTag(final Object obj, boolean z) {
        if (obj != null) {
            try {
                cancel(new RequestFilter() {
                    public boolean apply(ANRequest aNRequest) {
                        return ANRequestQueue.this.isRequestWithTheGivenTag(aNRequest, obj);
                    }
                }, z);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public int getSequenceNumber() {
        return this.mSequenceGenerator.incrementAndGet();
    }

    public ANRequest addRequest(ANRequest aNRequest) {
        try {
            this.mCurrentRequests.add(aNRequest);
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            aNRequest.setSequenceNumber(getSequenceNumber());
            if (aNRequest.getPriority() == Priority.IMMEDIATE) {
                aNRequest.setFuture(Core.getInstance().getExecutorSupplier().forImmediateNetworkTasks().submit(new InternalRunnable(aNRequest)));
            } else {
                aNRequest.setFuture(Core.getInstance().getExecutorSupplier().forNetworkTasks().submit(new InternalRunnable(aNRequest)));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return aNRequest;
    }

    public void finish(ANRequest aNRequest) {
        try {
            this.mCurrentRequests.remove(aNRequest);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean isRequestRunning(Object obj) {
        try {
            for (ANRequest aNRequest : this.mCurrentRequests) {
                if (isRequestWithTheGivenTag(aNRequest, obj) && aNRequest.isRunning()) {
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    private boolean isRequestWithTheGivenTag(ANRequest aNRequest, Object obj) {
        if (aNRequest.getTag() == null) {
            return false;
        }
        if ((aNRequest.getTag() instanceof String) && (obj instanceof String)) {
            return ((String) aNRequest.getTag()).equals((String) obj);
        }
        return aNRequest.getTag().equals(obj);
    }
}
