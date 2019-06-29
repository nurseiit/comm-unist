package org.altbeacon.beacon.service;

import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import org.altbeacon.beacon.Beacon;

public class Stats {
    private static final String TAG = "Stats";
    private static Stats mInstance;
    private static final SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss.SSS");
    private boolean mEnableHistoricalLogging;
    private boolean mEnableLogging;
    private boolean mEnabled;
    private Sample mSample;
    private long mSampleIntervalMillis = 0;
    private ArrayList<Sample> mSamples;

    public static class Sample {
        public long detectionCount = 0;
        public Date firstDetectionTime;
        public Date lastDetectionTime;
        public long maxMillisBetweenDetections;
        public Date sampleStartTime;
        public Date sampleStopTime;
    }

    public static Stats getInstance() {
        if (mInstance == null) {
            mInstance = new Stats();
        }
        return mInstance;
    }

    private Stats() {
        clearSamples();
    }

    public ArrayList<Sample> getSamples() {
        rollSampleIfNeeded();
        return this.mSamples;
    }

    public void setEnabled(boolean z) {
        this.mEnabled = z;
    }

    public boolean isEnabled() {
        return this.mEnabled;
    }

    public void setLoggingEnabled(boolean z) {
        this.mEnableLogging = z;
    }

    public void setHistoricalLoggingEnabled(boolean z) {
        this.mEnableHistoricalLogging = z;
    }

    public void setSampleIntervalMillis(long j) {
        this.mSampleIntervalMillis = j;
    }

    public void log(Beacon beacon) {
        rollSampleIfNeeded();
        Sample sample = this.mSample;
        sample.detectionCount++;
        if (this.mSample.firstDetectionTime == null) {
            this.mSample.firstDetectionTime = new Date();
        }
        if (this.mSample.lastDetectionTime != null) {
            long time = new Date().getTime() - this.mSample.lastDetectionTime.getTime();
            if (time > this.mSample.maxMillisBetweenDetections) {
                this.mSample.maxMillisBetweenDetections = time;
            }
        }
        this.mSample.lastDetectionTime = new Date();
    }

    public void clearSample() {
        this.mSample = null;
    }

    public void newSampleInterval() {
        Date date = new Date();
        if (this.mSample != null) {
            date = new Date(this.mSample.sampleStartTime.getTime() + this.mSampleIntervalMillis);
            this.mSample.sampleStopTime = date;
            if (this.mEnableHistoricalLogging) {
                logSamples();
            } else if (this.mEnableLogging) {
                logSample(this.mSample, true);
            }
        }
        this.mSample = new Sample();
        this.mSample.sampleStartTime = date;
        this.mSamples.add(this.mSample);
    }

    public void clearSamples() {
        this.mSamples = new ArrayList();
        newSampleInterval();
    }

    private void logSample(Sample sample, boolean z) {
        if (z) {
            Log.d(TAG, "sample start time, sample stop time, first detection time, last detection time, max millis between detections, detection count");
        }
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(sdf.format(sample.sampleStartTime));
        stringBuilder.append(",");
        stringBuilder.append(sdf.format(sample.sampleStopTime));
        stringBuilder.append(", ");
        stringBuilder.append(sdf.format(sample.firstDetectionTime));
        stringBuilder.append(", ");
        stringBuilder.append(sdf.format(sample.lastDetectionTime));
        stringBuilder.append(", ");
        stringBuilder.append(sample.maxMillisBetweenDetections);
        stringBuilder.append(", ");
        stringBuilder.append(sample.detectionCount);
        Log.d(str, stringBuilder.toString());
    }

    private void logSamples() {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("--- Stats for ");
        stringBuilder.append(this.mSamples.size());
        stringBuilder.append(" samples");
        Log.d(str, stringBuilder.toString());
        Iterator it = this.mSamples.iterator();
        boolean z = true;
        while (it.hasNext()) {
            logSample((Sample) it.next(), z);
            z = false;
        }
    }

    private void rollSampleIfNeeded() {
        if (this.mSample == null || (this.mSampleIntervalMillis > 0 && new Date().getTime() - this.mSample.sampleStartTime.getTime() >= this.mSampleIntervalMillis)) {
            newSampleInterval();
        }
    }
}
