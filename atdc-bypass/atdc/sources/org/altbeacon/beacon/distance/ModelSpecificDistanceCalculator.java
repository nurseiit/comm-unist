package org.altbeacon.beacon.distance;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.Log;
import com.bumptech.glide.load.Key;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import org.altbeacon.beacon.BeaconManager;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ModelSpecificDistanceCalculator implements DistanceCalculator {
    private static final String CONFIG_FILE = "model-distance-calculations.json";
    private static final String TAG = "ModelSpecificDistanceCalculator";
    private Context mContext;
    private AndroidModel mDefaultModel;
    private DistanceCalculator mDistanceCalculator;
    private AndroidModel mModel;
    Map<AndroidModel, DistanceCalculator> mModelMap;
    private String mRemoteUpdateUrlString;
    private AndroidModel mRequestedModel;

    public ModelSpecificDistanceCalculator(Context context, String str) {
        this(context, str, AndroidModel.forThisDevice());
    }

    public ModelSpecificDistanceCalculator(Context context, String str, AndroidModel androidModel) {
        this.mRemoteUpdateUrlString = null;
        this.mRequestedModel = androidModel;
        this.mRemoteUpdateUrlString = str;
        this.mContext = context;
        loadModelMap();
        this.mDistanceCalculator = findCalculatorForModel(androidModel);
    }

    public AndroidModel getModel() {
        return this.mModel;
    }

    public AndroidModel getRequestedModel() {
        return this.mRequestedModel;
    }

    public double calculateDistance(int i, double d) {
        if (this.mDistanceCalculator != null) {
            return this.mDistanceCalculator.calculateDistance(i, d);
        }
        Log.w(TAG, "distance calculator has not been set");
        return -1.0d;
    }

    private DistanceCalculator findCalculatorForModel(AndroidModel androidModel) {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Finding best distance calculator for ");
        stringBuilder.append(androidModel.getVersion());
        stringBuilder.append(",");
        stringBuilder.append(androidModel.getBuildNumber());
        stringBuilder.append(",");
        stringBuilder.append(androidModel.getModel());
        stringBuilder.append(",");
        stringBuilder.append("");
        stringBuilder.append(androidModel.getManufacturer());
        BeaconManager.logDebug(str, stringBuilder.toString());
        int i = 0;
        AndroidModel androidModel2 = null;
        for (AndroidModel androidModel3 : this.mModelMap.keySet()) {
            if (androidModel3.matchScore(androidModel) > i) {
                i = androidModel3.matchScore(androidModel);
                androidModel2 = androidModel3;
            }
        }
        if (androidModel2 != null) {
            String str2 = TAG;
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append("found a match with score ");
            stringBuilder2.append(i);
            BeaconManager.logDebug(str2, stringBuilder2.toString());
            str2 = TAG;
            stringBuilder2 = new StringBuilder();
            stringBuilder2.append("Finding best distance calculator for ");
            stringBuilder2.append(androidModel2.getVersion());
            stringBuilder2.append(",");
            stringBuilder2.append(androidModel2.getBuildNumber());
            stringBuilder2.append(",");
            stringBuilder2.append(androidModel2.getModel());
            stringBuilder2.append(",");
            stringBuilder2.append("");
            stringBuilder2.append(androidModel2.getManufacturer());
            BeaconManager.logDebug(str2, stringBuilder2.toString());
            this.mModel = androidModel2;
        } else {
            this.mModel = this.mDefaultModel;
            Log.w(TAG, "Cannot find match for this device.  Using default");
        }
        return (DistanceCalculator) this.mModelMap.get(this.mModel);
    }

    private void loadModelMap() {
        boolean loadModelMapFromFile;
        if (this.mRemoteUpdateUrlString != null) {
            loadModelMapFromFile = loadModelMapFromFile();
            if (!loadModelMapFromFile) {
                requestModelMapFromWeb();
            }
        } else {
            loadModelMapFromFile = false;
        }
        if (!loadModelMapFromFile) {
            loadDefaultModelMap();
        }
        this.mDistanceCalculator = findCalculatorForModel(this.mRequestedModel);
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:32:0x0079 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:17:0x003c */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x009d A:{SYNTHETIC, Splitter:B:45:0x009d} */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x00a2 A:{SYNTHETIC, Splitter:B:49:0x00a2} */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0091 A:{SYNTHETIC, Splitter:B:35:0x0091} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0096 A:{SYNTHETIC, Splitter:B:39:0x0096} */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x009d A:{SYNTHETIC, Splitter:B:45:0x009d} */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x00a2 A:{SYNTHETIC, Splitter:B:49:0x00a2} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Can't wrap try/catch for region: R(11:1|2|3|4|(3:5|6|(2:8|9)(1:53))|(2:11|12)|(2:15|16)|17|18|19|20) */
    /* JADX WARNING: Missing block: B:21:0x0045, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:22:0x0046, code skipped:
            r3 = TAG;
            r4 = new java.lang.StringBuilder();
            r4.append("Cannot update distance models from online database at ");
            r4.append(r7.mRemoteUpdateUrlString);
            r4.append(" with JSON of ");
            r4.append(r1.toString());
            r4.append(" due to exception ");
            android.util.Log.w(r3, r4.toString(), r0);
     */
    /* JADX WARNING: Missing block: B:23:0x006f, code skipped:
            return false;
     */
    /* JADX WARNING: Missing block: B:36:?, code skipped:
            r3.close();
     */
    /* JADX WARNING: Missing block: B:40:?, code skipped:
            r4.close();
     */
    private boolean loadModelMapFromFile() {
        /*
        r7 = this;
        r0 = new java.io.File;
        r1 = r7.mContext;
        r1 = r1.getFilesDir();
        r2 = "model-distance-calculations.json";
        r0.<init>(r1, r2);
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = 0;
        r3 = 0;
        r4 = new java.io.FileInputStream;	 Catch:{ IOException -> 0x0078, all -> 0x0075 }
        r4.<init>(r0);	 Catch:{ IOException -> 0x0078, all -> 0x0075 }
        r5 = new java.io.BufferedReader;	 Catch:{ IOException -> 0x0079 }
        r6 = new java.io.InputStreamReader;	 Catch:{ IOException -> 0x0079 }
        r6.<init>(r4);	 Catch:{ IOException -> 0x0079 }
        r5.<init>(r6);	 Catch:{ IOException -> 0x0079 }
    L_0x0023:
        r3 = r5.readLine();	 Catch:{ IOException -> 0x0073, all -> 0x0070 }
        if (r3 == 0) goto L_0x0032;
    L_0x0029:
        r1.append(r3);	 Catch:{ IOException -> 0x0073, all -> 0x0070 }
        r3 = "\n";
        r1.append(r3);	 Catch:{ IOException -> 0x0073, all -> 0x0070 }
        goto L_0x0023;
    L_0x0032:
        if (r5 == 0) goto L_0x0037;
    L_0x0034:
        r5.close();	 Catch:{ Exception -> 0x0037 }
    L_0x0037:
        if (r4 == 0) goto L_0x003c;
    L_0x0039:
        r4.close();	 Catch:{ Exception -> 0x003c }
    L_0x003c:
        r0 = r1.toString();	 Catch:{ JSONException -> 0x0045 }
        r7.buildModelMap(r0);	 Catch:{ JSONException -> 0x0045 }
        r0 = 1;
        return r0;
    L_0x0045:
        r0 = move-exception;
        r3 = "ModelSpecificDistanceCalculator";
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "Cannot update distance models from online database at ";
        r4.append(r5);
        r5 = r7.mRemoteUpdateUrlString;
        r4.append(r5);
        r5 = " with JSON of ";
        r4.append(r5);
        r1 = r1.toString();
        r4.append(r1);
        r1 = " due to exception ";
        r4.append(r1);
        r1 = r4.toString();
        android.util.Log.w(r3, r1, r0);
        return r2;
    L_0x0070:
        r0 = move-exception;
        r3 = r5;
        goto L_0x009b;
    L_0x0073:
        r3 = r5;
        goto L_0x0079;
    L_0x0075:
        r0 = move-exception;
        r4 = r3;
        goto L_0x009b;
    L_0x0078:
        r4 = r3;
    L_0x0079:
        r1 = "ModelSpecificDistanceCalculator";
        r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x009a }
        r5.<init>();	 Catch:{ all -> 0x009a }
        r6 = "Cannot open distance model file ";
        r5.append(r6);	 Catch:{ all -> 0x009a }
        r5.append(r0);	 Catch:{ all -> 0x009a }
        r0 = r5.toString();	 Catch:{ all -> 0x009a }
        android.util.Log.w(r1, r0);	 Catch:{ all -> 0x009a }
        if (r3 == 0) goto L_0x0094;
    L_0x0091:
        r3.close();	 Catch:{ Exception -> 0x0094 }
    L_0x0094:
        if (r4 == 0) goto L_0x0099;
    L_0x0096:
        r4.close();	 Catch:{ Exception -> 0x0099 }
    L_0x0099:
        return r2;
    L_0x009a:
        r0 = move-exception;
    L_0x009b:
        if (r3 == 0) goto L_0x00a0;
    L_0x009d:
        r3.close();	 Catch:{ Exception -> 0x00a0 }
    L_0x00a0:
        if (r4 == 0) goto L_0x00a5;
    L_0x00a2:
        r4.close();	 Catch:{ Exception -> 0x00a5 }
    L_0x00a5:
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.altbeacon.beacon.distance.ModelSpecificDistanceCalculator.loadModelMapFromFile():boolean");
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0034 A:{SYNTHETIC, Splitter:B:20:0x0034} */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x003a A:{SYNTHETIC, Splitter:B:25:0x003a} */
    private boolean saveJson(java.lang.String r5) {
        /*
        r4 = this;
        r0 = 0;
        r1 = 0;
        r2 = r4.mContext;	 Catch:{ Exception -> 0x002a }
        r3 = "model-distance-calculations.json";
        r2 = r2.openFileOutput(r3, r0);	 Catch:{ Exception -> 0x002a }
        r5 = r5.getBytes();	 Catch:{ Exception -> 0x0025, all -> 0x0022 }
        r2.write(r5);	 Catch:{ Exception -> 0x0025, all -> 0x0022 }
        r2.close();	 Catch:{ Exception -> 0x0025, all -> 0x0022 }
        if (r2 == 0) goto L_0x0019;
    L_0x0016:
        r2.close();	 Catch:{ Exception -> 0x0019 }
    L_0x0019:
        r5 = "ModelSpecificDistanceCalculator";
        r0 = "Successfully saved new distance model file";
        android.util.Log.i(r5, r0);
        r5 = 1;
        return r5;
    L_0x0022:
        r5 = move-exception;
        r1 = r2;
        goto L_0x0038;
    L_0x0025:
        r5 = move-exception;
        r1 = r2;
        goto L_0x002b;
    L_0x0028:
        r5 = move-exception;
        goto L_0x0038;
    L_0x002a:
        r5 = move-exception;
    L_0x002b:
        r2 = "ModelSpecificDistanceCalculator";
        r3 = "Cannot write updated distance model to local storage";
        android.util.Log.w(r2, r3, r5);	 Catch:{ all -> 0x0028 }
        if (r1 == 0) goto L_0x0037;
    L_0x0034:
        r1.close();	 Catch:{ Exception -> 0x0037 }
    L_0x0037:
        return r0;
    L_0x0038:
        if (r1 == 0) goto L_0x003d;
    L_0x003a:
        r1.close();	 Catch:{ Exception -> 0x003d }
    L_0x003d:
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.altbeacon.beacon.distance.ModelSpecificDistanceCalculator.saveJson(java.lang.String):boolean");
    }

    @TargetApi(3)
    private void requestModelMapFromWeb() {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.INTERNET") != 0) {
            Log.w(TAG, "App has no android.permission.INTERNET permission.  Cannot check for distance model updates");
            return;
        }
        new ModelSpecificDistanceUpdater(this.mContext, this.mRemoteUpdateUrlString, new CompletionHandler() {
            public void onComplete(String str, Exception exception, int i) {
                if (exception != null) {
                    str = ModelSpecificDistanceCalculator.TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Cannot updated distance models from online database at ");
                    stringBuilder.append(ModelSpecificDistanceCalculator.this.mRemoteUpdateUrlString);
                    stringBuilder.append(" due to exception: ");
                    stringBuilder.append(exception);
                    Log.w(str, stringBuilder.toString());
                } else if (i != 200) {
                    str = ModelSpecificDistanceCalculator.TAG;
                    StringBuilder stringBuilder2 = new StringBuilder();
                    stringBuilder2.append("Cannot updated distance models from online database at ");
                    stringBuilder2.append(ModelSpecificDistanceCalculator.this.mRemoteUpdateUrlString);
                    stringBuilder2.append(" due to HTTP status code ");
                    stringBuilder2.append(i);
                    Log.w(str, stringBuilder2.toString());
                } else {
                    BeaconManager.logDebug(ModelSpecificDistanceCalculator.TAG, "Successfully downloaded distance models from online database");
                    try {
                        ModelSpecificDistanceCalculator.this.buildModelMap(str);
                        if (ModelSpecificDistanceCalculator.this.saveJson(str)) {
                            ModelSpecificDistanceCalculator.this.loadModelMapFromFile();
                            ModelSpecificDistanceCalculator.this.mDistanceCalculator = ModelSpecificDistanceCalculator.this.findCalculatorForModel(ModelSpecificDistanceCalculator.this.mRequestedModel);
                            Log.i(ModelSpecificDistanceCalculator.TAG, "Successfully updated distance model with latest from online database");
                        }
                    } catch (JSONException e) {
                        Log.w(ModelSpecificDistanceCalculator.TAG, "Cannot parse json from downloaded distance model", e);
                    }
                }
            }
        }).execute(new Void[]{null, null, null});
    }

    private void buildModelMap(String str) throws JSONException {
        this.mModelMap = new HashMap();
        JSONArray jSONArray = new JSONObject(str).getJSONArray("models");
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            boolean z = jSONObject.has("default") ? jSONObject.getBoolean("default") : false;
            Double valueOf = Double.valueOf(jSONObject.getDouble("coefficient1"));
            Double valueOf2 = Double.valueOf(jSONObject.getDouble("coefficient2"));
            Double valueOf3 = Double.valueOf(jSONObject.getDouble("coefficient3"));
            String string = jSONObject.getString("version");
            String string2 = jSONObject.getString("build_number");
            String string3 = jSONObject.getString("model");
            String string4 = jSONObject.getString("manufacturer");
            double doubleValue = valueOf.doubleValue();
            double doubleValue2 = valueOf2.doubleValue();
            double doubleValue3 = valueOf3.doubleValue();
            CurveFittedDistanceCalculator curveFittedDistanceCalculator = r12;
            CurveFittedDistanceCalculator curveFittedDistanceCalculator2 = new CurveFittedDistanceCalculator(doubleValue, doubleValue2, doubleValue3);
            AndroidModel androidModel = new AndroidModel(string, string2, string3, string4);
            this.mModelMap.put(androidModel, curveFittedDistanceCalculator);
            if (z) {
                this.mDefaultModel = androidModel;
            }
        }
    }

    private void loadDefaultModelMap() {
        this.mModelMap = new HashMap();
        try {
            buildModelMap(stringFromFilePath(CONFIG_FILE));
        } catch (Exception e) {
            throw new RuntimeException("Cannot build model distance calculations", e);
        }
    }

    private String stringFromFilePath(String str) throws IOException {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("/");
        stringBuilder.append(str);
        InputStream resourceAsStream = ModelSpecificDistanceCalculator.class.getResourceAsStream(stringBuilder.toString());
        if (resourceAsStream == null) {
            ClassLoader classLoader = getClass().getClassLoader();
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append("/");
            stringBuilder2.append(str);
            classLoader.getResourceAsStream(stringBuilder2.toString());
        }
        if (resourceAsStream == null) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("Cannot load resource at ");
            stringBuilder.append(str);
            throw new RuntimeException(stringBuilder.toString());
        }
        StringBuilder stringBuilder3 = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(resourceAsStream, Key.STRING_CHARSET_NAME));
        for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
            stringBuilder3.append(readLine);
            stringBuilder3.append(10);
        }
        return stringBuilder3.toString();
    }
}
