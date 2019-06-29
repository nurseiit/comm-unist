package com.lotecs.attendcheck.common;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.androidnetworking.AndroidNetworking;
import com.androidnetworking.common.Priority;
import com.androidnetworking.error.ANError;
import com.androidnetworking.interfaces.JSONObjectRequestListener;
import com.lotecs.attendcheck.common.GCMManager.OnRegistrationIDCallback;
import com.lotecs.util.AndroidUtil;
import java.util.HashMap;
import java.util.Map;
import kr.ac.unist.atdc.R;
import org.json.JSONException;
import org.json.JSONObject;

public class IntroActivity extends Activity {
    public static final boolean LOG = true;
    public static final String TAG = "IntroActivity";
    private Handler mHandler;
    private Runnable mRunnable;

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_intro);
        checkRegistrationGCM(this);
    }

    private void checkRegistrationGCM(Context context) {
        if (AndroidUtil.getBooleanApiValue(context, "regStatus", false)) {
            goMainPage(1500);
        } else {
            GCMManager gCMManager = new GCMManager(context, getString(R.string.sender_id), new OnRegistrationIDCallback() {
                public void registrationSuccess(String str) {
                    IntroActivity.this.regPush(str);
                }

                public void registrationFailed(String str) {
                    Log.e(IntroActivity.TAG, str);
                    IntroActivity.this.goMainPage(0);
                }
            });
        }
    }

    private void goMainPage(int i) {
        this.mHandler = new Handler();
        this.mRunnable = new Runnable() {
            public void run() {
                IntroActivity.this.startActivity(new Intent(IntroActivity.this, LoginActivity.class));
                IntroActivity.this.finish();
            }
        };
        this.mHandler.postDelayed(this.mRunnable, (long) i);
    }

    private void regPush(final String str) {
        String string = getString(R.string.reg_push);
        Map hashMap = new HashMap();
        hashMap.put("device", str);
        hashMap.put("plat", SystemMediaRouteProvider.PACKAGE_NAME);
        hashMap.put("app", "unistAtdc");
        String str2 = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(string);
        stringBuilder.append("?");
        stringBuilder.append(hashMap.toString());
        Log.e(str2, stringBuilder.toString());
        AndroidNetworking.post(string).addUrlEncodeFormBodyParameter(hashMap).setPriority(Priority.MEDIUM).build().getAsJSONObject(new JSONObjectRequestListener() {
            public void onResponse(JSONObject jSONObject) {
                try {
                    if (jSONObject.getString("state").equalsIgnoreCase("T")) {
                        AndroidUtil.saveStringApiVaule(IntroActivity.this.getApplicationContext(), GCMManager.PROPERTY_REG_ID, str);
                        AndroidUtil.saveBooleanApiValue(IntroActivity.this.getApplicationContext(), "regStatus", true);
                    } else {
                        AndroidUtil.saveBooleanApiValue(IntroActivity.this.getApplicationContext(), "regStatus", false);
                    }
                } catch (JSONException e) {
                    Log.w(IntroActivity.TAG, e.getMessage());
                    e.printStackTrace();
                } catch (Throwable th) {
                    IntroActivity.this.goMainPage(500);
                }
                IntroActivity.this.goMainPage(500);
            }

            public void onError(ANError aNError) {
                IntroActivity.this.goMainPage(0);
            }
        });
    }

    /* Access modifiers changed, original: protected */
    public void onDestroy() {
        if (this.mHandler != null) {
            this.mHandler.removeCallbacks(this.mRunnable);
        }
        super.onDestroy();
    }
}
