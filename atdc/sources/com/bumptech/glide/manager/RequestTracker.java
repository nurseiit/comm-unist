package com.bumptech.glide.manager;

import com.bumptech.glide.request.Request;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

public class RequestTracker {
    private boolean isPaused;
    private final List<Request> pendingRequests = new ArrayList();
    private final Set<Request> requests = Collections.newSetFromMap(new WeakHashMap());

    public void runRequest(Request request) {
        this.requests.add(request);
        if (this.isPaused) {
            this.pendingRequests.add(request);
        } else {
            request.begin();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void addRequest(Request request) {
        this.requests.add(request);
    }

    public void removeRequest(Request request) {
        this.requests.remove(request);
        this.pendingRequests.remove(request);
    }

    public boolean isPaused() {
        return this.isPaused;
    }

    public void pauseRequests() {
        this.isPaused = true;
        for (Request request : getSnapshot()) {
            if (request.isRunning()) {
                request.pause();
                this.pendingRequests.add(request);
            }
        }
    }

    public void resumeRequests() {
        this.isPaused = false;
        for (Request request : getSnapshot()) {
            if (!(request.isComplete() || request.isCancelled() || request.isRunning())) {
                request.begin();
            }
        }
        this.pendingRequests.clear();
    }

    public void clearRequests() {
        for (Request clear : getSnapshot()) {
            clear.clear();
        }
        this.pendingRequests.clear();
    }

    public void restartRequests() {
        for (Request request : getSnapshot()) {
            if (!(request.isComplete() || request.isCancelled())) {
                request.pause();
                if (this.isPaused) {
                    this.pendingRequests.add(request);
                } else {
                    request.begin();
                }
            }
        }
    }

    private List<Request> getSnapshot() {
        ArrayList arrayList = new ArrayList(this.requests.size());
        for (Request add : this.requests) {
            arrayList.add(add);
        }
        return arrayList;
    }
}
