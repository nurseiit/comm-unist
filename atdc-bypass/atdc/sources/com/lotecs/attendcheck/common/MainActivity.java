package com.lotecs.attendcheck.common;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.bluetooth.BluetoothAdapter;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.http.SslError;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.webkit.JavascriptInterface;
import android.webkit.JsResult;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import com.androidnetworking.AndroidNetworking;
import com.androidnetworking.common.Priority;
import com.androidnetworking.error.ANError;
import com.androidnetworking.interfaces.JSONObjectRequestListener;
import com.bumptech.glide.load.Key;
import com.gun0912.tedpermission.PermissionListener;
import com.gun0912.tedpermission.TedPermission;
import com.lotecs.attendcheck.GoPlusBeaconApp;
import com.lotecs.attendcheck.domain.AppInfo;
import com.lotecs.attendcheck.domain.AttendInfo;
import com.lotecs.attendcheck.domain.ProCheckInfo;
import com.lotecs.attendcheck.student.AttendActivity;
import com.lotecs.util.AndroidUtil;
import com.lotecs.util.DateUtil;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kr.ac.unist.atdc.R;
import org.altbeacon.beacon.Beacon;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MainActivity extends Activity {
    private static final String TAG = "MainActivity";
    private AttendInfo attend_;
    private ArrayList<Beacon> goplusBeacons;
    AppInfo info;
    private ArrayList<AttendInfo> infos = null;
    private boolean isFinish = false;
    private PermissionListener permissionlistener = new PermissionListener() {
        public void onPermissionGranted() {
        }

        public void onPermissionDenied(ArrayList<String> arrayList) {
            MainActivity.this.permissionCheck();
        }
    };
    protected ProCheckInfo pro;
    private long startTime = 0;
    private String uid_;
    WebView webView_;

    class AndroidBridge {
        AndroidBridge() {
        }

        @JavascriptInterface
        public void check(String str) {
            Intent intent = new Intent(MainActivity.this, AttendActivity.class);
            intent.putExtra("uid", str);
            MainActivity.this.startActivity(intent);
        }

        @JavascriptInterface
        public void setting(String str, String str2) {
            Intent intent = new Intent(MainActivity.this, OptionActivity.class);
            intent.putExtra("name", MainActivity.this.info.getName());
            intent.putExtra("psnm", MainActivity.this.info.getPsnm());
            MainActivity.this.startActivity(intent);
        }

        @JavascriptInterface
        public void logout() {
            MainActivity.this.finish();
        }
    }

    class WebClient extends WebViewClient {
        WebClient() {
        }

        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Log.e("", " shouldOverrideUrlLoading ");
            try {
                str = URLDecoder.decode(str, Key.STRING_CHARSET_NAME);
            } catch (Exception unused) {
            }
            webView.loadUrl(str);
            return true;
        }

        public void onReceivedSslError(WebView webView, final SslErrorHandler sslErrorHandler, SslError sslError) {
            Builder builder = new Builder(MainActivity.this);
            switch (sslError.getPrimaryError()) {
            }
            builder.setTitle("SSL Certificate Error");
            builder.setMessage("보안 인증서가 발급됩니다.");
            builder.setPositiveButton("계속", new OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    sslErrorHandler.proceed();
                }
            });
            builder.setNegativeButton("취소", new OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    sslErrorHandler.cancel();
                }
            });
            builder.create().show();
        }

        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            Log.e("onReceivedError", str);
        }
    }

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_main);
        this.webView_ = (WebView) findViewById(R.id.webView);
        setUserInfo(getIntent());
        this.goplusBeacons = new ArrayList();
        this.webView_.setWebChromeClient(new WebChromeClient() {
            public boolean onJsAlert(WebView webView, String str, String str2, final JsResult jsResult) {
                new Builder(MainActivity.this).setTitle("전자출결시스템").setMessage(str2).setPositiveButton(17039370, new OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        jsResult.confirm();
                    }
                }).setCancelable(false).create().show();
                return true;
            }

            public boolean onJsConfirm(WebView webView, String str, String str2, final JsResult jsResult) {
                new Builder(MainActivity.this).setTitle("전자출결시스템").setMessage(str2).setPositiveButton(17039370, new OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        jsResult.confirm();
                    }
                }).setNegativeButton(17039360, new OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        jsResult.cancel();
                    }
                }).create().show();
                return true;
            }
        });
        enableBluetooth();
    }

    private void enableBluetooth() {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter.getState() == 13 || defaultAdapter.getState() == 10) {
            defaultAdapter.enable();
        }
    }

    private void setUserInfo(Intent intent) {
        this.info = (AppInfo) intent.getParcelableExtra("app");
        String iddi = this.info.getIddi();
        this.uid_ = this.info.getIdno();
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("iddi = ");
        stringBuilder.append(iddi);
        Log.d(str, stringBuilder.toString());
        loadWeb(this.uid_);
        if (iddi.equalsIgnoreCase("2")) {
            getTrackList();
        }
    }

    private void loadWeb(final String str) {
        runOnUiThread(new Runnable() {
            @SuppressLint({"SetJavaScriptEnabled", "AddJavascriptInterface"})
            public void run() {
                MainActivity.this.webView_.setWebViewClient(new WebClient());
                MainActivity.this.webView_.setWebChromeClient(new WebChromeClient());
                MainActivity.this.webView_.getSettings().setJavaScriptEnabled(true);
                MainActivity.this.webView_.getSettings().setUseWideViewPort(true);
                MainActivity.this.webView_.getSettings().setLoadWithOverviewMode(true);
                MainActivity.this.webView_.getSettings().setDomStorageEnabled(true);
                if (VERSION.SDK_INT >= 21) {
                    MainActivity.this.permissionCheck();
                }
                MainActivity.this.webView_.addJavascriptInterface(new AndroidBridge(), SystemMediaRouteProvider.PACKAGE_NAME);
                MainActivity.this.webView_.loadUrl(String.format(MainActivity.this.getString(R.string.common_api), new Object[]{str}));
            }
        });
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() != R.id.refresh) {
            return false;
        }
        this.webView_.reload();
        return true;
    }

    private void permissionCheck() {
        ((TedPermission.Builder) ((TedPermission.Builder) ((TedPermission.Builder) TedPermission.with(this).setPermissionListener(this.permissionlistener)).setDeniedMessage((CharSequence) "권한에 대한 허가를 거부하면 전자출결 서비스를 사용할 수 없습니다.\n\n[설정]> [권한]에서 권한을 켜십시오.")).setPermissions("android.permission.READ_PHONE_STATE")).check();
    }

    public void onBackPressed() {
        Log.i(TAG, "onBackPressed");
        if (this.webView_.canGoBack()) {
            this.webView_.goBack();
        } else if (this.isFinish) {
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("startTime:");
            stringBuilder.append(this.startTime);
            stringBuilder.append(", endTime:");
            stringBuilder.append(currentTimeMillis);
            Log.d(str, stringBuilder.toString());
            if (this.startTime + 5 > currentTimeMillis) {
                if (!AndroidUtil.getBooleanApiValue(this, "isBeacon", false)) {
                    BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                    if (defaultAdapter.getState() == 11 || defaultAdapter.getState() == 12) {
                        defaultAdapter.disable();
                    }
                }
                setResult(-1);
                finish();
                return;
            }
            this.startTime = System.currentTimeMillis() / 1000;
            Toast.makeText(this, getString(R.string.please_back), 0).show();
        } else {
            this.isFinish = true;
            this.startTime = System.currentTimeMillis() / 1000;
            Toast.makeText(this, getString(R.string.please_back), 0).show();
        }
    }

    /* Access modifiers changed, original: protected */
    public void onResume() {
        super.onResume();
    }

    /* Access modifiers changed, original: protected */
    public void onPause() {
        ((GoPlusBeaconApp) getApplication()).setMainActivity(null, false);
        super.onPause();
    }

    private void getTrackList() {
        String string = getString(R.string.track_list);
        Map hashMap = new HashMap();
        hashMap.put("idno", this.uid_);
        hashMap.put("psco", "");
        hashMap.put("sjco", "");
        hashMap.put("date", DateUtil.getDate("yyyyMMddHHmmss"));
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(string);
        stringBuilder.append("?");
        stringBuilder.append(hashMap.toString());
        Log.i(str, stringBuilder.toString());
        AndroidNetworking.post(string).addUrlEncodeFormBodyParameter(hashMap).setPriority(Priority.MEDIUM).build().getAsJSONObject(new JSONObjectRequestListener() {
            public void onError(ANError aNError) {
            }

            public void onResponse(JSONObject jSONObject) {
                try {
                    if (jSONObject.getString("state").equalsIgnoreCase("T")) {
                        MainActivity.this.pro = new ProCheckInfo();
                        JSONArray jSONArray = jSONObject.getJSONArray("data");
                        if (jSONArray.length() > 0) {
                            int i = 0;
                            JSONObject jSONObject2 = jSONArray.getJSONObject(0);
                            MainActivity.this.pro.setPsco(jSONObject2.getString("개설학과코드"));
                            MainActivity.this.pro.setSjco(jSONObject2.getString("수업코드"));
                            MainActivity.this.pro.setProname(jSONObject2.getString("교수명"));
                            MainActivity.this.pro.setWeek(jSONObject2.getString("주차"));
                            MainActivity.this.pro.setOrder(jSONObject2.getString("순서"));
                            MainActivity.this.pro.setDate(jSONObject2.getString("년도학기"));
                            MainActivity.this.attend_ = new AttendInfo();
                            MainActivity.this.attend_.setPsco(jSONObject2.getString("개설학과코드"));
                            MainActivity.this.attend_.setSjco(jSONObject2.getString("수업코드"));
                            AttendInfo access$100 = MainActivity.this.attend_;
                            StringBuilder stringBuilder = new StringBuilder();
                            stringBuilder.append(DateUtil.getDefaultTime(jSONObject2.getString("시작시간"), ":"));
                            stringBuilder.append("~");
                            stringBuilder.append(DateUtil.getDefaultTime(jSONObject2.getString("종료시간"), ":"));
                            access$100.setYyse(stringBuilder.toString());
                            MainActivity.this.attend_.setDays(jSONObject2.getString("수업일자"));
                            MainActivity.this.attend_.setTime(jSONObject2.getString("교시"));
                            MainActivity.this.attend_.setName(jSONObject2.getString("교수명"));
                            MainActivity.this.attend_.setCnt(jSONObject2.getString("수강인원"));
                            JSONArray jSONArray2 = jSONObject.getJSONArray("ssid");
                            if (jSONArray2.length() > 0) {
                                MainActivity.this.infos = new ArrayList();
                                while (i < jSONArray2.length()) {
                                    JSONObject jSONObject3 = jSONArray2.getJSONObject(i);
                                    AttendInfo attendInfo = new AttendInfo();
                                    attendInfo.setIdno(MainActivity.this.uid_);
                                    attendInfo.setSsid(jSONObject3.getString("SSID"));
                                    attendInfo.setMac(jSONObject3.getString("MSC"));
                                    attendInfo.setPsco(jSONObject2.getString("개설학과코드"));
                                    attendInfo.setSjco(jSONObject2.getString("수업코드"));
                                    MainActivity.this.infos.add(attendInfo);
                                    i++;
                                }
                            }
                        }
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        });
    }

    /* Access modifiers changed, original: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 500 && i2 == -1) {
            AndroidUtil.saveBooleanApiValue(this, "isExqz", true);
        }
    }

    private AttendInfo getBeaconAuth(List<AttendInfo> list) {
        Iterator it = this.goplusBeacons.iterator();
        while (it.hasNext()) {
            Beacon beacon = (Beacon) it.next();
            Log.d(TAG, beacon.toString());
            for (AttendInfo attendInfo : list) {
                if (attendInfo.getSsid().toUpperCase().equalsIgnoreCase(beacon.getId1().toString().toUpperCase())) {
                    String toUpperCase = attendInfo.getMac().toUpperCase();
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(beacon.getId3());
                    stringBuilder.append("^");
                    stringBuilder.append(beacon.getId2());
                    if (toUpperCase.equalsIgnoreCase(stringBuilder.toString())) {
                        return attendInfo;
                    }
                }
            }
        }
        return null;
    }

    public void didRangeBeaconsInRegion(Collection<Beacon> collection) {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(collection.size());
        stringBuilder.append("개 didRangeBeaconsInRegion");
        Log.d(str, stringBuilder.toString());
        if (collection.size() > 0) {
            this.goplusBeacons.addAll(filterBeacons(collection));
        }
    }

    private List<Beacon> filterBeacons(Collection<Beacon> collection) {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(collection.size());
        stringBuilder.append("개 filterBeacons");
        Log.d(str, stringBuilder.toString());
        ArrayList arrayList = new ArrayList(collection.size());
        for (Beacon add : collection) {
            arrayList.add(add);
        }
        Collections.sort(arrayList, new Comparator<Beacon>() {
            public int compare(Beacon beacon, Beacon beacon2) {
                return Double.compare(beacon.getDistance(), beacon2.getDistance());
            }
        });
        return arrayList;
    }
}
