package org.altbeacon.beacon.distance;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.AsyncTask;
import android.provider.Settings.Secure;
import org.altbeacon.beacon.BuildConfig;

@TargetApi(3)
public class ModelSpecificDistanceUpdater extends AsyncTask<Void, Void, Void> {
    private static final String TAG = "ModelSpecificDistanceUpdater";
    private Exception exception = null;
    private CompletionHandler mCompletionHandler;
    private Context mContext;
    private DistanceConfigFetcher mDistanceConfigFetcher;
    private String response = null;
    private String urlString = null;

    interface CompletionHandler {
        void onComplete(String str, Exception exception, int i);
    }

    private String getVersion() {
        return BuildConfig.VERSION_NAME;
    }

    /* Access modifiers changed, original: protected */
    public void onPostExecute() {
    }

    /* Access modifiers changed, original: protected|varargs */
    public Void doInBackground(Void... voidArr) {
        this.mDistanceConfigFetcher.request();
        if (this.mCompletionHandler != null) {
            this.mCompletionHandler.onComplete(this.mDistanceConfigFetcher.getResponseString(), this.mDistanceConfigFetcher.getException(), this.mDistanceConfigFetcher.getResponseCode());
        }
        return null;
    }

    public ModelSpecificDistanceUpdater(Context context, String str, CompletionHandler completionHandler) {
        this.mContext = context;
        this.mDistanceConfigFetcher = new DistanceConfigFetcher(str, getUserAgentString());
        this.mCompletionHandler = completionHandler;
    }

    private String getUserAgentString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Android Beacon Library;");
        stringBuilder.append(getVersion());
        stringBuilder.append(";");
        stringBuilder.append(getPackage());
        stringBuilder.append(";");
        stringBuilder.append(getInstallId());
        stringBuilder.append(";");
        stringBuilder.append(getModel());
        return stringBuilder.toString();
    }

    private String getPackage() {
        return this.mContext.getPackageName();
    }

    private String getModel() {
        return AndroidModel.forThisDevice().toString();
    }

    private String getInstallId() {
        return Secure.getString(this.mContext.getContentResolver(), "android_id");
    }
}
